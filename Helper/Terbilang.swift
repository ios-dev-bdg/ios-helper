public static func bilangx(angka : Double) -> String{
	let nomina : [String] = ["","satu","dua","tiga","empat","lima","enam", "tujuh","delapan","sembilan","sepuluh","sebelas"]

	if(angka<12)
	{
		return nomina[Int(angka)];
	}

	if(angka>=12 && angka <= 19)
	{
		return nomina[Int(angka) % 10] + " belas ";
	}

	if(angka>=20 && angka <= 99)
	{
		return nomina[Int(angka) / 10] + " puluh " + nomina[Int(angka) % 10];
	}

	if(angka>=100 && angka <= 199)
	{
		let mod = Int(angka) % 100
		return "seratus " + bilangx(angka: Double(mod));
	}

	if(angka >= 200 && angka <= 999)
	{
		let mod = Int(angka) % 100
		return nomina[Int(angka) / 100] + " ratus " + bilangx(angka: Double(mod));
	}

	if(angka>=1000 && angka <= 1999)
	{
		let mod = Double(Int(angka) % 1000)
		return "seribu " + bilangx(angka: mod);
	}

	if(angka >= 2000 && angka <= 999999)
	{
		let mod = Double(Int(angka) % 1000)
		return bilangx(angka: Double(Int(angka) / 1000)) + " ribu " + bilangx(angka: mod);
	}

	if(angka >= 1000000 && angka <= 999999999)
	{
		let mod = Double(Int(angka) % 1000000)
		return bilangx(angka: Double((Int(angka) / 1000000))) + " juta " + bilangx(angka: mod);
	}

	return "";
}