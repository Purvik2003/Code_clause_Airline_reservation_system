package airline.reservation.system;

import java.awt.*;
import javax.swing.*;
import java.awt.event.*;


public class Mainframe extends JFrame{

    public static void main(String[] args) {
        new Mainframe().setVisible(true);
    }
    
    public Mainframe() {
        super("AIRLINE RESERVATION SYSTEM");
        initialize();
    }

    
    private void initialize() {
	
        setForeground(Color.CYAN);
        setLayout(null); 

        JLabel NewLabel = new JLabel("");
	NewLabel.setIcon(new ImageIcon(ClassLoader.getSystemResource("airline/reservation/system/icon/logo.jpeg")));
	NewLabel.setBounds(0, 0, 1366, 768); 
	add(NewLabel); 
  
		
		
        JMenuBar menuBar = new JMenuBar();
	setJMenuBar(menuBar);
		
        JMenu Flight_Information = new JMenu("FLIGHT_INFORMATION");
        Flight_Information.setForeground(Color.BLUE);
	menuBar.add(Flight_Information);
		
        JMenuItem FlightDetails = new JMenuItem("GET_FLIGHT_INFO");
	Flight_Information.add(FlightDetails);
		
        JMenu Cust_Details= new JMenu("CUSTOMER_DETAILS");
        Cust_Details.setForeground(Color.RED);
	menuBar.add(Cust_Details);
        
	JMenuItem ReservationDetails = new JMenuItem("ADD_CUSTOMER_DETAILS");
	Cust_Details.add(ReservationDetails);
		
        JMenu Journey_Details= new JMenu("JOURNEY_DETAILS");
       Journey_Details.setForeground(Color.BLUE);
	menuBar.add(Journey_Details);
        
	JMenuItem PassengerDetails = new JMenuItem("JOURNEY_DETAILS");
	Journey_Details.add(PassengerDetails);
		
        JMenu Pay_Details= new JMenu("PAYMENT_DETAILS");
       Pay_Details.setForeground(Color.RED);
	menuBar.add(Pay_Details);
        
	JMenuItem SectorDetails_1 = new JMenuItem("PAYMENT_DETAILS");
	Pay_Details.add(SectorDetails_1);
		
        JMenu Cancellation_Details= new JMenu("CANCELLATION_DETAILS");
      Cancellation_Details.setForeground(Color.BLUE);
	menuBar.add(Cancellation_Details);
        
	JMenuItem Cancellation = new JMenuItem("CANCELLATION");
	Cancellation_Details.add(Cancellation);
		

        
		
	FlightDetails.addActionListener(new ActionListener(){
            @Override
            public void actionPerformed(ActionEvent ae){
                new Flight_Info();
            }
	});
        
	ReservationDetails.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent ae){
                try {
                    new Add_Customer();
		} catch (Exception e) {
                    e.printStackTrace();
		} 
            }
	});
		
        PassengerDetails.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent ae){
                try {
                    new Journey_Details();
                } catch (Exception e) {
                    e.printStackTrace();
		}
            }
	});
		
        SectorDetails_1.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent ae){
                try {
                    new Payment_Details();
		} catch (Exception e) {
                    e.printStackTrace();
		}
            }
	});
		
        Cancellation.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent ae){
                new Cancel();
            }
	});
		
        setSize(1850,1090);
	setVisible(true);
    }
}
