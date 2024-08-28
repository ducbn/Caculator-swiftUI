//
//  ContentView.swift
//  Caculator
//
//  Created by Bui Ngoc Duc on 25/02/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var giaTri = "0"
    @State private var giaTriLuuTru = 0.0
    @State private var phepTinh:String!
    @State private var AC = true
    @State private var cong = false
    @State private var tru = false
    @State private var nhan = false
    @State private var chia = false
    @State private var bang = false
    
    var body: some View {
        ZStack{
            NavigationView {
                // Sử dụng màu đen làm nền
                Color.black.edgesIgnoringSafeArea(.all)
            }
            VStack{
                Spacer().frame(height: 100)
                
                HStack{
                    Text(giaTri)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 200, alignment: .bottomTrailing)
                        .font(.system(size: 80))
                    
                    
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                // AC,  +/- , %, /
                HStack{
                    Button(action: {
                        if AC == true{
                            self.cong = false
                            self.tru = false
                            self.nhan = false
                            self.chia = false
                            self.giaTri = "0"
                            self.giaTriLuuTru = 0
                        }else{
                            self.giaTri = ""
                            self.AC = true
                            self.giaTri = "0"
                        }
                    }, label: {
                        if self.AC == true{
                            Text("AC")
                                .foregroundColor(.black)
                                .font(.title2)
                                .frame(width: 75, height: 75, alignment: .center)
                                .background(Circle().foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.837)))
                        }else{
                            Text("C")
                                .foregroundColor(.black)
                                .font(.title2)
                                .frame(width: 75, height: 75, alignment: .center)
                                .background(Circle().foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.837)))
                        }
                    })
                    
                    Button(action: {
                        self.phepTinh = "+/-"
                        if self.giaTri != ""{
                            self.giaTriLuuTru = Double(self.giaTri)! * -1
                            self.giaTri = "\(giaTriLuuTru)"
                        }
                    }, label: {
                        Text("+/-")
                            .foregroundColor(.black)
                            .font(.title2)
                            .frame(width: 75, height: 75, alignment: .center)
                            .background(Circle().foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.837)))
                    })
                    
                    
                    Button(action: {
                        self.phepTinh = "%"
                        if self.giaTri != ""{
                            self.giaTriLuuTru = Double(self.giaTri)! / 100
                            self.giaTri = "\(giaTriLuuTru)"
                        }
                    }, label: {
                        Text("%")
                            .foregroundColor(.black)
                            .font(.title2)
                            .frame(width: 75, height: 75, alignment: .center)
                            .background(Circle().foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.837)))
                        
                    })
                    
                    Button(action: {
                        self.cong = false
                        self.tru = false
                        self.nhan = false
                        self.chia = true
                        self.phepTinh = "/"
                        if self.giaTri != "" && self.giaTri != "0"{
                            self.giaTriLuuTru = Double(self.giaTri)!
                            self.giaTri = ""
                        }
                    }, label: {
                        if self.chia == true {
                            Text("/")
                                .foregroundColor(.orange)
                                .font(.title2)
                                .frame(width: 75, height: 75, alignment: .center)
                                .background(Circle().foregroundColor(Color(.white)))
                        }else if self.chia == false{
                            Text("/")
                                .foregroundColor(.white)
                                .font(.title2)
                                .frame(width: 75, height: 75, alignment: .center)
                                .background(Circle().foregroundColor(Color(.orange)))
                        }
                        
                    })
                    
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                // 7, 8, 9, X
                HStack{
                    Button(action: {
                        if self.giaTri == "0" {
                            self.giaTri = ""
                        }
                        if self.bang == true{
                            self.giaTri = ""
                            self.bang = false
                        }
                        self.AC = false
                        self.cong = false
                        self.tru = false
                        self.nhan = false
                        self.chia = false
                        self.giaTri += "7"
                    }, label: {
                        Text("7")
                            .foregroundStyle(Color.white)
                            .frame(width: 75, height: 75, alignment: .center)
                            .font(.largeTitle.bold())
                            .background(Circle().foregroundColor(Color.gray))
                    })
                    
                    Button(action: {
                        if self.giaTri == "0" {
                            self.giaTri = ""
                        }
                        if self.bang == true{
                            self.giaTri = ""
                            self.bang = false
                        }
                        self.AC = false
                        self.cong = false
                        self.tru = false
                        self.nhan = false
                        self.chia = false
                        self.giaTri += "8"
                    }, label: {
                        Text("8")
                            .foregroundStyle(Color.white)
                            .frame(width: 75, height: 75, alignment: .center)
                            .font(.largeTitle.bold())
                            .background(Circle().foregroundColor(Color.gray))
                    })
                    
                    Button(action: {
                        if self.giaTri == "0" {
                            self.giaTri = ""
                        }
                        if self.bang == true{
                            self.giaTri = ""
                            self.bang = false
                        }
                        self.AC = false
                        self.cong = false
                        self.tru = false
                        self.nhan = false
                        self.chia = false
                        self.giaTri += "9"
                    }, label: {
                        Text("9")
                            .foregroundStyle(Color.white)
                            .frame(width: 75, height: 75, alignment: .center)
                            .font(.largeTitle.bold())
                            .background(Circle().foregroundColor(Color.gray))
                    })
                    
                    Button(action: {
                        self.cong = false
                        self.tru = false
                        self.chia = false
                        self.nhan = true
                        self.phepTinh = "x"
                        if self.giaTri != "" && self.giaTri != "0"{
                            self.giaTriLuuTru = Double(self.giaTri)!
                            self.giaTri = ""
                        }
                    }, label: {
                        if self.nhan == true {
                            Text("x")
                                .foregroundColor(.orange)
                                .font(.title)
                                .frame(width: 75, height: 75, alignment: .center)
                                .background(Circle().foregroundColor(Color(.white)))
                        }else if self.nhan == false{
                            Text("x")
                                .foregroundColor(.white)
                                .font(.title)
                                .frame(width: 75, height: 75, alignment: .center)
                                .background(Circle().foregroundColor(Color(.orange)))
                        }
                    })
                }
                
                // 4, 5, 6, -
                HStack{
                    Button(action: {
                        if self.giaTri == "0" {
                            self.giaTri = ""
                        }
                        if self.bang == true{
                            self.giaTri = ""
                            self.bang = false
                        }
                        self.AC = false
                        self.cong = false
                        self.tru = false
                        self.nhan = false
                        self.chia = false
                        self.giaTri += "4"
                    }, label: {
                        Text("4")
                            .foregroundStyle(Color.white)
                            .frame(width: 75, height: 75, alignment: .center)
                            .font(.largeTitle.bold())
                            .background(Circle().foregroundColor(Color.gray))
                    })
                    
                    Button(action: {
                        if self.giaTri == "0" {
                            self.giaTri = ""
                        }
                        if self.bang == true{
                            self.giaTri = ""
                            self.bang = false
                        }
                        self.AC = false
                        self.cong = false
                        self.tru = false
                        self.nhan = false
                        self.chia = false
                        self.giaTri += "5"
                    }, label: {
                        Text("5")
                            .foregroundStyle(Color.white)
                            .frame(width: 75, height: 75, alignment: .center)
                            .font(.largeTitle.bold())
                            .background(Circle().foregroundColor(Color.gray))
                    })
                    
                    Button(action: {
                        if self.giaTri == "0" {
                            self.giaTri = ""
                        }
                        if self.bang == true{
                            self.giaTri = ""
                            self.bang = false
                        }
                        self.AC = false
                        self.cong = false
                        self.tru = false
                        self.nhan = false
                        self.chia = false
                        self.giaTri += "6"
                    }, label: {
                        Text("6")
                            .foregroundStyle(Color.white)
                            .frame(width: 75, height: 75, alignment: .center)
                            .font(.largeTitle.bold())
                            .background(Circle().foregroundColor(Color.gray))
                    })
                    
                    Button(action: {
                        self.cong = false
                        self.tru = true
                        self.chia = false
                        self.nhan = false
                        self.phepTinh = "-"
                        if self.giaTri != "" && self.giaTri != "0"{
                            self.giaTriLuuTru = Double(self.giaTri)!
                            self.giaTri = ""
                        }
                    }, label: {
                        if self.tru == true {
                            Text("-")
                                .foregroundColor(.orange)
                                .font(.title)
                                .frame(width: 75, height: 75, alignment: .center)
                                .background(Circle().foregroundColor(Color(.white)))
                        }else if self.tru == false{
                            Text("-")
                                .foregroundColor(.white)
                                .font(.largeTitle.bold())
                                .frame(width: 75, height: 75, alignment: .center)
                                .background(Circle().foregroundColor(Color(.orange)))
                        }
                    })
                }
                
                // 1, 2, 3, +
                HStack{
                    Button(action: {
                        if self.giaTri == "0" {
                            self.giaTri = ""
                        }
                        if self.bang == true{
                            self.giaTri = ""
                            self.bang = false
                        }
                        self.AC = false
                        self.cong = false
                        self.tru = false
                        self.nhan = false
                        self.chia = false
                        self.giaTri += "1"
                    }, label: {
                        Text("1")
                            .foregroundStyle(Color.white)
                            .frame(width: 75, height: 75, alignment: .center)
                            .font(.largeTitle.bold())
                            .background(Circle().foregroundColor(Color.gray))
                    })
                    
                    Button(action: {
                        if self.giaTri == "0" {
                            self.giaTri = ""
                        }
                        if self.bang == true{
                            self.giaTri = ""
                            self.bang = false
                        }
                        self.AC = false
                        self.cong = false
                        self.tru = false
                        self.nhan = false
                        self.chia = false
                        self.giaTri += "2"
                    }, label: {
                        Text("2")
                            .foregroundStyle(Color.white)
                            .frame(width: 75, height: 75, alignment: .center)
                            .font(.largeTitle.bold())
                            .background(Circle().foregroundColor(Color.gray))
                    })
                    
                    Button(action: {
                        if self.giaTri == "0" {
                            self.giaTri = ""
                        }
                        if self.bang == true{
                            self.giaTri = ""
                            self.bang = false
                        }
                        self.AC = false
                        self.cong = false
                        self.tru = false
                        self.nhan = false
                        self.chia = false
                        self.giaTri += "3"
                    }, label: {
                        Text("3")
                            .foregroundStyle(Color.white)
                            .frame(width: 75, height: 75, alignment: .center)
                            .font(.largeTitle.bold())
                            .background(Circle().foregroundColor(Color.gray))
                    })
                    
                    Button(action: {
                        self.cong = true
                        self.tru = false
                        self.chia = false
                        self.nhan = false
                        self.phepTinh = "+"
                        if self.giaTri != "" && self.giaTri != "0"{
                            self.giaTriLuuTru = Double(self.giaTri)!
                            self.giaTri = ""
                        }
                    }, label: {
                        if self.cong == true {
                            Text("+")
                                .foregroundColor(.orange)
                                .font(.title)
                                .frame(width: 75, height: 75, alignment: .center)
                                .background(Circle().foregroundColor(Color(.white)))
                        }else if self.cong == false{
                            Text("+")
                                .foregroundColor(.white)
                                .font(.largeTitle.bold())
                                .frame(width: 75, height: 75, alignment: .center)
                                .background(Circle().foregroundColor(Color(.orange)))
                        }
                    })
                }
                
                // 0 , , , =
                HStack{
                    Button(action: {
                        if self.giaTri == "0" {
                            self.giaTri = ""
                        }
                        if self.bang == true{
                            self.giaTri = ""
                            self.bang = false
                        }
                        self.AC = false
                        self.cong = false
                        self.tru = false
                        self.nhan = false
                        self.chia = false
                        self.giaTri += "0"
                    }, label: {
                        Text("0")
                            .foregroundStyle(Color.white)
                            .frame(width: 157, height: 75, alignment: .center)
                            .font(.largeTitle.bold())
                            .background(RoundedRectangle(cornerRadius: 50).foregroundColor(Color.gray))
                        
                    })
                    
                    Button(action: {
                        self.giaTri = ""
                        self.AC = false
                        self.cong = false
                        self.tru = false
                        self.nhan = false
                        self.chia = false
                        self.giaTri += "."
                    }, label: {
                        Text(",")
                            .foregroundStyle(Color.white)
                            .frame(width: 75, height: 75, alignment: .center)
                            .font(.largeTitle.bold())
                            .background(Circle().foregroundColor(Color.gray))
                        
                    })
                    
                    Button(action: {
                        self.bang = true
                        if self.phepTinh == "+"{
                            self.giaTri = "\(self.giaTriLuuTru + Double(self.giaTri)!)"
                        }else if self.phepTinh == "-"{
                            self.giaTri = "\(self.giaTriLuuTru - Double(self.giaTri)!)"
                        }else if self.phepTinh == "x"{
                            self.giaTri = "\(self.giaTriLuuTru * Double(self.giaTri)!)"
                        }else if self.phepTinh == "/"{
                            self.giaTri = "\(self.giaTriLuuTru / Double(self.giaTri)!)"
                        }
                        
                    }, label: {
                        Text("=")
                            .foregroundStyle(Color.white)
                            .frame(width: 75, height: 75, alignment: .center)
                            .font(.title)
                            .background(Circle().foregroundColor(.orange))
                    })
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

