class Canbo


  def initialize

  end 
  def enter_infomation
      print "Nhap ten: "
      @ten204 = gets.chomp
      print "Nhap tuoi : "
      @tuoi204 = gets.to_i
      print "Nhap gioi tinh 1(nam) 0(nu) 2(khac) : "
      @gt204 = gets.to_i
      print "nhap dia chi : "
      @dc204 = gets.chomp
  end

  def info    
      puts " Ten : #{@ten204}"
      puts "Tuoi : #{@tuoi204}"
      if @gt204 == 1 
          puts'Gioi tinh : Nam'
      elsif @gt204 == 0
          puts 'Gioi tinh :Nu'
      else 
          puts 'Gioi tinh: Khac'
      end
      puts "Diachi : #{@dc204}"
  end
  attr_accessor :ten204, :tuoi204, :gt204, :dc204
end 



class Congnhan < Canbo

  def initialize
  end

  attr_accessor :ten204, :tuoi204, :gt204, :dc204, :bac204

  def enter_infomation
      super
      print "Nhap bac: "
      @bac = gets.chomp
  end

  def info 
      super   
      puts "Bac : #{@bac204}"
  end

end

class Kysu < Canbo

  def initialize
  end

  def enter_infomation
      super
      print "Nhap nganh dao tao: "
      @nganh = gets.chomp
  end
  def info 
      super   
      puts "Nganh : #{@nganh204}"
  end
  attr_accessor :ten204, :tuoi204, :gt204, :dc204, :nganh204
end

class Nhanvien < Canbo
  def initialize
  end

  def enter_infomation
      super
      print "nhap cong viec : "
      @congviec204 = gets.chomp
  end
  def info 
      super   
      puts "cong viec : #{@congviec204}"
  end
  attr_accessor :ten204, :tuoi204, :gt204, :dc204, :congviec204

end

class QLCB
  def initialize
  end

  $canbos204 = []
  
  def addCanbo
      puts"1. nhap cong nhan :"
      puts"2.nhap ky su :"
      puts"3. nhap nhan vien :"
      print " chon : "
      choose = gets.to_i
      if choose ==1 
          canbo =Congnhan.new
       
      elsif choose == 2
          canbo =Kysu.new
      else 
          canbo = Nhanvien.new
      end
      canbo.enter_infomation
      $canbos204 << canbo       
  end

  def infomatinon 
      puts "danh sach can bo"    
      $canbos204.each do |canbo|
          puts canbo.info
      end
  end

end



$continute = true
while $continute

  quanly = QLCB.new
  puts "1. them can bo"
  puts "2. tim kiem theo ten"
  puts "3. thong tin danh sach can bo "
  puts "4. thoat."

  print "chon : "
  choose = gets.to_i

  case choose
  when 1
      quanly.addCanbo
  when 2
     puts "little child"
  when 3
      quanly.infomatinon
  else
     puts "tam biet"
      $continute = false
  end
end