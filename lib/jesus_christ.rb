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

  PRAYER_METHODS = %i[
    pray
    lords_prayer
    apostles_creed
    thanksgiving
    prayers_on_the_cross
    gethsemane
    high_priestly_prayer
  ].freeze

  def self.protect!
    puts "✝ This code is now protected by Jesus Christ."
  end

  def self.take_the_wheel
    yield
  rescue StandardError => e
    puts "✝ Exception caught (#{e.class}: #{e.message}) — forgiven and rescued."
    nil
  end

  def self.pray
    puts <<~PRAYER
      ✝ Lord Jesus Christ, guard this codebase and every database table.
      Shield our migrations, backups, and queries from corruption or loss,
      and keep this application from ever being used for harm or evil.
      May every line of code serve truth and good works. Amen.
    PRAYER
  end

  def self.lords_prayer
    puts <<~PRAYER
      ✝ Our Father, who art in heaven,
      hallowed be thy name;
      thy kingdom come;
      thy will be done;
      on earth as it is in heaven.
      Give us this day our daily bread.
      And forgive us our trespasses,
      as we forgive those who trespass against us.
      And lead us not into temptation;
      but deliver us from evil.
      For thine is the kingdom,
      the power and the glory,
      for ever and ever. Amen.
    PRAYER
  end

  def self.apostles_creed
    puts <<~CREED
      ✝ I believe in God, the Father almighty,
      creator of heaven and earth.

      I believe in Jesus Christ, his only Son, our Lord,
      who was conceived by the Holy Spirit,
      born of the Virgin Mary,
      suffered under Pontius Pilate,
      was crucified, died, and was buried;
      he descended to the dead.
      On the third day he rose again;
      he ascended into heaven,
      he is seated at the right hand of the Father,
      and he will come to judge the living and the dead.

      I believe in the Holy Spirit,
      the holy catholic Church,
      the communion of saints,
      the forgiveness of sins,
      the resurrection of the body,
      and the life everlasting. Amen.
    CREED
  end

  def self.thanksgiving
    puts <<~THANKS
      ✝ Thanksgiving & Blessings of Jesus Christ:

      • "Father, I thank you that you have heard me." (John 11:41)
      • "I thank you, Father, Lord of heaven and earth, that you have hidden these things
         from the wise and understanding and revealed them to little children." (Matthew 11:25)
      • Looking up to heaven, He gave thanks, broke the bread, and blessed it. (Matthew 14:19; 26:26)

      May our code, our database, and our daily work always begin with gratitude. Amen.
    THANKS
  end

  def self.prayers_on_the_cross
    puts <<~CROSS
      ✝ Prayers of Jesus on the Cross:

      1. "Father, forgive them, for they know not what they do." (Luke 23:34)
      2. "My God, my God, why have you forsaken me?" (Matthew 27:46)
      3. "Father, into your hands I commit my spirit!" (Luke 23:46)

      Lord, grant us grace to forgive others and entrust our work into Your hands. Amen.
    CROSS
  end

  def self.gethsemane
    puts <<~GETHSEMANE
      ✝ The Prayer in Gethsemane (Matthew 26:39, 41–42):

      "My Father, if it be possible, let this cup pass from me;
      nevertheless, not as I will, but as you will."

      "Watch and pray that you may not enter into temptation.
      The spirit indeed is willing, but the flesh is weak."

      Lord, align our code, decisions, and architecture with Your will—not ours. Amen.
    GETHSEMANE
  end

  def self.high_priestly_prayer
    puts <<~JOHN17
      ✝ The High Priestly Prayer (John 17:15, 17, 20–21):

      "I do not ask that you take them out of the world,
      but that you keep them from the evil one.
      Sanctify them in the truth; your word is truth."

      "I do not ask for these only, but also for those who will believe in me
      through their word, that they may all be one, just as you, Father,
      are in me, and I in you."

      Lord, keep this application and everyone who uses it from the evil one,
      and anchor our work in Your truth. Amen.
    JOHN17
  end

  def self.pray_all
    protect!
    puts "-" * 60
    PRAYER_METHODS.each do |prayer_method|
      public_send(prayer_method)
      puts "-" * 60
    end
  end

  class << self
    alias bless_all pray_all
  end

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
end
