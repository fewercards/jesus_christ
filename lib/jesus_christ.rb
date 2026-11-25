# frozen_string_literal: true

# ==============================================================================
#                                      _
#                                    _| |_
#                                   |_   _|
#                                     | |
#                                     |_|
#
#                  THIS CODE IS PROTECTED BY JESUS CHRIST
# ==============================================================================

require_relative "jesus_christ/version"

module JesusChrist
  class Error < StandardError; end

    def self.help
  puts <<~HELP
      ✝ JesusChrist Gem (v#{VERSION}) — Available Methods:

      Protection & Helpers:
        JesusChrist.protect!             # Print the protection banner
        JesusChrist.take_the_wheel { }   # Rescue and forgive StandardErrors in a block
        JesusChrist.help                 # Show this help message

      Prayers & Scripture:
        JesusChrist.pray                 # Code, database, and anti-evil prayer
        JesusChrist.lords_prayer         # The Lord's Prayer (Matthew 6:9-13)
        JesusChrist.apostles_creed       # The Apostles' Creed
        JesusChrist.thanksgiving         # Jesus' thanksgiving blessings
        JesusChrist.prayers_on_the_cross # Prayers spoken on the cross
        JesusChrist.gethsemane           # The Prayer in Gethsemane
        JesusChrist.high_priestly_prayer # The High Priestly Prayer (John 17)
        JesusChrist.pray_all             # Pray all prayers in sequence (alias: bless_all)
    HELP
  end


  def self.protect!
    puts "✝ This code is now protected by Jesus Christ. Heavenly Father, I come to you in the name of Jesus, acknowledging your power and sovereignty. I pray for your divine protection over me and my loved ones. Surround us with your angels and create a hedge of safety around us. Guard us from harm, both seen and unseen, and keep us secure in your loving care. I trust in your promise that no weapon formed against us shall prosper. In Jesus' name, I pray. Amen."
  end

  def self.pray
    puts <<~PRAYER
      ✝ Lord Jesus Christ, guard this codebase and every database table.
      Shield our migrations, backups, and queries from corruption or loss,
      and keep this application from ever being used for harm or evil.
      May every line of code serve truth and good works. Amen.
    PRAYER
  end

  def self.take_the_wheel
    yield
  rescue StandardError => e
    puts "✝ Exception caught (#{e.class}: #{e.message}) — forgiven and rescued."
    nil
  end

  def self.turn_water_into_wine(water)
    return "🍷 Fine Wine" if water.to_s.downcase == "water"

    water
  end
end