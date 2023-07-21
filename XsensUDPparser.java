import com.cycling74.max.*;

/**
* This code implements a parser to read Xsens datagrams in Max.
* It is based on a previous code published in "Skogstad, S. et. al. OSC Implementation and Evaluation of the Xsens MVN suit. In Proc. of NIME, 2011."" 
* available here: https://www.uio.no/ritmo/english/research/labs/fourms/software/XsensUDP/
* This update implements joint angle datagram paser. 
*
* @author  Patrice Guyot
* @version 1.0
* @since   2023-07-06 
*/

public class XsensUDPparser extends MaxObject
{

	
	
	public XsensUDPparser(Atom[] args)
	{
		
		declareIO(1, 1);
		setInletAssist(0, "Xsens stream (message type 01 or 20)");
		setOutletAssist(0, "Position and rotation data ouput"); // format: /Xsens/segID/type f1 f2 F3
		setOutletAssist(1, "Joint angle data ouput"); // format: /Xsens/parentSegID/parentPointID/childSegID/childPointID/angle f1 f2 f3

	}

    
	public void list(byte[] buf)
	{
		//post("START!!!");
	
		byte[] id = {buf[0], buf[1], buf[2], buf[3], buf[4], buf[5]}; // 6 bytes ID String
		String ids = new String(id);
		//post("ID string: " + ids);

		int messageType = Integer.parseInt(ids.substring(ids.length() - 2));
		//post("messageType: " + messageType);

		
		byte[] b = {buf[6], buf[7], buf[8], buf[9]}; // 4 bytes sample counter
		int frameNr = toInt(b);
		//post("Recieved frame number: " + frameNr);
		// 1 byte datagram counter
		int nb = (int) buf[11]; // Amounts of segments - 1 byte number of items
		
		

		if (messageType == 1) // Pose data (Euler)

		{
			// Unpack segments
			for (int i = 24; i < nb*28; i = i+28) // Start in position 24
			{ 
				byte[] bsid = {buf[i], buf[i+1], buf[i+2], buf[i+3]};
				int segId = toInt(bsid);
				byte[] pos = new byte[12]; // position buffer
				byte[] rot = new byte[12]; // orientation buffer (needs to be 16 if quaternion) 
				System.arraycopy(buf, i+4, pos, 0, 12);
				System.arraycopy(buf, i+16, rot, 0, 12);
				float[] posf = toFloatA(pos);
				float[] rotf = toFloatA(rot);
				String head = "/Xsens/"+segId+"/pos";
				outlet(0, new Atom[]{Atom.newAtom(head), Atom.newAtom(posf[0]), Atom.newAtom(posf[1]), Atom.newAtom(posf[2])});
				String head2 = "/Xsens/"+segId+"/rot";
				outlet(0, new Atom[]{Atom.newAtom(head2), Atom.newAtom(rotf[0]), Atom.newAtom(rotf[1]), Atom.newAtom(rotf[2])});
			}
		}
			
		
		
		if (messageType == 20) // Joint Angle data
		/* ------------------------------------------------------
		2.7.1 Joint Angles (type 20)
			Information about each joint is sent as follows.
			4 bytes point ID of parent segment connection. See 2.5.10 4 bytes point ID of child segment connection. See 2.5.10
			4 bytes floating point rotation around segment x–axis
			4 bytes floating point rotation around segment y–axis
			4 bytes floating point rotation around segment z–axis
		
		2.5.10 Point ID
		The ID of a point depends on the ID of the segment it is attached to and the local ID it has in the segment. These local IDs are documented in the MVN User Manual. The ID is sent as a 4-byte integer, defined as 256 * segment ID + local point ID.
		Example:
		The Sacrum point on the Pelvis segment has local ID 13, and the Pelvis has ID 1, so the ID of the point is sent as 256*1 + 13 = 269.
		------------------------------------------------------
		*/ 

		{

			// Unpack joint angles
			for (int i = 24; i < nb*20; i = i+20) // Start in position 24
			{ 
				// get parent
				byte[] bsid = {buf[i], buf[i+1], buf[i+2], buf[i+3]};
				int parentId = toInt(bsid);
				//post("parentId : " + parentId);
				int parent_segmentID = parentId/256 - 1;
				int parent_pointID = parentId % 256 - 1;
				//post("parent_segmentID : " + parent_segmentID);
				//post("parent_pointID : " + parent_pointID);

				// get child
				byte[] bsid2 = {buf[i+4], buf[i+5], buf[i+6], buf[i+7]};
				int childId = toInt(bsid2);
				int child_segmentID = childId/256 - 1;
				int child_pointID = childId % 256 - 1;


				byte[] angle = new byte[12]; // position buffer
				System.arraycopy(buf, i+8, angle, 0, 12);
				float[] anglef = toFloatA(angle);
				String head = "/Xsens/"+parent_segmentID + "/" + parent_pointID + "/" +  child_segmentID + "/" + child_pointID +"/angle";
				outlet(1, new Atom[]{Atom.newAtom(head), Atom.newAtom(anglef[0]), 	Atom.newAtom(anglef[1]), Atom.newAtom(anglef[2])});
		
			}
		}
	}

		
	public static int toInt(byte[] data) {
    if (data == null || data.length != 4) return 0x0;
    // ----------
    return (int)( // NOTE: type cast not necessary for int
            (0xff & data[0]) << 24  |
            (0xff & data[1]) << 16  |
            (0xff & data[2]) << 8   |
            (0xff & data[3]) << 0
            );
	}


	public static float toFloat(byte[] data) {
    if (data == null || data.length != 4) return 0x0;
    // ---------- simple:
    return Float.intBitsToFloat(toInt(data));
	}
	
	
	public static float[] toFloatA(byte[] data) {
    if (data == null || data.length % 4 != 0) return null;
    // ----------
    float[] flts = new float[data.length / 4];
    for (int i = 0; i < flts.length; i++) {
        flts[i] = toFloat( new byte[] {
            data[(i*4)],
            data[(i*4)+1],
            data[(i*4)+2],
            data[(i*4)+3],
        } );
    }
    return flts;
	}	
	
	
    
}




