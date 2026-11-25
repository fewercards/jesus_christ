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