.class public final Ljyx;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "null"

    return-object p0

    :pswitch_0
    const-string p0, "CLOSED"

    return-object p0

    :pswitch_1
    const-string p0, "PAUSED"

    return-object p0

    :pswitch_2
    const-string p0, "STARTED"

    return-object p0

    :pswitch_3
    const-string p0, "READY"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic b(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "null"

    return-object p0

    :pswitch_0
    const-string p0, "PAUSED"

    return-object p0

    :pswitch_1
    const-string p0, "CLOSED"

    return-object p0

    :pswitch_2
    const-string p0, "STOPPED"

    return-object p0

    :pswitch_3
    const-string p0, "STARTED"

    return-object p0

    :pswitch_4
    const-string p0, "READY"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic c(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "null"

    return-object p0

    :pswitch_0
    const-string p0, "CLOSED"

    return-object p0

    :pswitch_1
    const-string p0, "STOPPED"

    return-object p0

    :pswitch_2
    const-string p0, "STARTED"

    return-object p0

    :pswitch_3
    const-string p0, "READY"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic d(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "VIDEO"

    return-object p0

    :pswitch_0
    const-string p0, "AUDIO"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static final e(Lkll;Ljxg;)Z
    .locals 1

    iget p1, p1, Ljxg;->g:I

    invoke-static {p1}, LCamcorderProfileUtil;->hasHfrProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkll;->a:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static final f(Lkll;Ljxg;)Ljxl;
    .locals 4

    const-string v0, "pref_enable_manual_videohfrprofile_key"

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget p1, p1, Ljxg;->g:I

    invoke-static {p1}, LCamcorderProfileUtil;->hasHfrProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, LCamcorderProfileUtil;->getProfileHfr(I)Ljxk;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkll;->a:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    invoke-static {p0}, Ljxl;->a(Landroid/media/CamcorderProfile;)Ljxk;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljxk;->a()Ljxl;

    move-result-object p0

    return-object p0

    :cond_1
    iget p1, p1, Ljxg;->g:I

    invoke-static {p1}, LCamcorderProfileUtil;->getProfileHfrManual(I)Ljxk;

    move-result-object p0

    invoke-virtual {p0}, Ljxk;->a()Ljxl;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lkll;Ljxi;)Ljxl;
    .locals 4

    const-string v0, "pref_enable_manual_videoprofile_key"

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget p1, p1, Ljxi;->k:I

    invoke-static {p1}, LCamcorderProfileUtil;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, LCamcorderProfileUtil;->getProfile(I)Ljxk;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkll;->a:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    invoke-static {p0}, Ljxl;->a(Landroid/media/CamcorderProfile;)Ljxk;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljxk;->a()Ljxl;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, LCamcorderProfileUtil;->getManualProfile()Ljxk;

    move-result-object p0

    invoke-virtual {p0}, Ljxk;->a()Ljxl;

    move-result-object p0

    return-object p0
.end method

.method public static final h(ILjwu;ZLmqp;Lmqp;)I
    .locals 1

    sget-object v0, Ljwu;->k:Ljwu;

    invoke-virtual {p1, v0}, Ljwu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x2dc6c00

    if-ge p0, p1, :cond_0

    const p0, 0x2dc6c00

    :cond_0
    if-eqz p2, :cond_1

    int-to-float p0, p0

    const p1, 0x3f666666    # 0.9f

    mul-float p0, p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :cond_1
    invoke-virtual {p3}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    int-to-float p0, p0

    invoke-virtual {p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float p0, p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_2
    invoke-virtual {p4}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :cond_3
    return p0
.end method

.method public static final i(Ljxd;)Landroid/media/MediaCodec;
    .locals 2

    invoke-interface {p0}, Ljxd;->a()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljxc;

    invoke-direct {v1, p0, v0}, Ljxc;-><init>(Ljxd;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static j()[I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public static k(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/16 p0, 0x149

    return p0

    :pswitch_2
    const/16 p0, 0x148

    return p0

    :pswitch_3
    const/16 p0, 0x147

    return p0

    :pswitch_4
    const/16 p0, 0x146

    return p0

    :pswitch_5
    const/16 p0, 0x145

    return p0

    :pswitch_6
    const/16 p0, 0x144

    return p0

    :pswitch_7
    const/16 p0, 0x143

    return p0

    :pswitch_8
    const/16 p0, 0x142

    return p0

    :pswitch_9
    const/16 p0, 0x141

    return p0

    :pswitch_a
    const/16 p0, 0x140

    return p0

    :pswitch_b
    const/16 p0, 0x13f

    return p0

    :pswitch_c
    const/16 p0, 0x13d

    return p0

    :pswitch_d
    const/16 p0, 0x13c

    return p0

    :pswitch_e
    const/16 p0, 0x13b

    return p0

    :pswitch_f
    const/16 p0, 0x13a

    return p0

    :pswitch_10
    const/16 p0, 0x139

    return p0

    :pswitch_11
    const/16 p0, 0x138

    return p0

    :pswitch_12
    const/16 p0, 0x137

    return p0

    :pswitch_13
    const/16 p0, 0x136

    return p0

    :pswitch_14
    const/16 p0, 0x135

    return p0

    :pswitch_15
    const/16 p0, 0x134

    return p0

    :pswitch_16
    const/16 p0, 0x133

    return p0

    :pswitch_17
    const/16 p0, 0x132

    return p0

    :pswitch_18
    const/16 p0, 0x131

    return p0

    :pswitch_19
    const/16 p0, 0x130

    return p0

    :pswitch_1a
    const/16 p0, 0x12f

    return p0

    :pswitch_1b
    const/16 p0, 0x12e

    return p0

    :pswitch_1c
    const/16 p0, 0x12d

    return p0

    :pswitch_1d
    const/16 p0, 0x12c

    return p0

    :pswitch_1e
    const/16 p0, 0x12b

    return p0

    :pswitch_1f
    const/16 p0, 0x12a

    return p0

    :pswitch_20
    const/16 p0, 0x129

    return p0

    :pswitch_21
    const/16 p0, 0x128

    return p0

    :pswitch_22
    const/16 p0, 0x127

    return p0

    :pswitch_23
    const/16 p0, 0x126

    return p0

    :pswitch_24
    const/16 p0, 0x125

    return p0

    :pswitch_25
    const/16 p0, 0x124

    return p0

    :pswitch_26
    const/16 p0, 0x123

    return p0

    :pswitch_27
    const/16 p0, 0x122

    return p0

    :pswitch_28
    const/16 p0, 0x121

    return p0

    :pswitch_29
    const/16 p0, 0x120

    return p0

    :pswitch_2a
    const/16 p0, 0x11f

    return p0

    :pswitch_2b
    const/16 p0, 0x11e

    return p0

    :pswitch_2c
    const/16 p0, 0x11d

    return p0

    :pswitch_2d
    const/16 p0, 0x11c

    return p0

    :pswitch_2e
    const/16 p0, 0x11a

    return p0

    :pswitch_2f
    const/16 p0, 0x119

    return p0

    :pswitch_30
    const/16 p0, 0x118

    return p0

    :pswitch_31
    const/16 p0, 0x117

    return p0

    :pswitch_32
    const/16 p0, 0x116

    return p0

    :pswitch_33
    const/16 p0, 0x115

    return p0

    :pswitch_34
    const/16 p0, 0x114

    return p0

    :pswitch_35
    const/16 p0, 0x111

    return p0

    :pswitch_36
    const/16 p0, 0x10f

    return p0

    :pswitch_37
    const/16 p0, 0x10e

    return p0

    :pswitch_38
    const/16 p0, 0x10d

    return p0

    :pswitch_39
    const/16 p0, 0x10c

    return p0

    :pswitch_3a
    const/16 p0, 0x10b

    return p0

    :pswitch_3b
    const/16 p0, 0x10a

    return p0

    :pswitch_3c
    const/16 p0, 0x109

    return p0

    :pswitch_3d
    const/16 p0, 0x107

    return p0

    :pswitch_3e
    const/16 p0, 0x106

    return p0

    :pswitch_3f
    const/16 p0, 0x105

    return p0

    :pswitch_40
    const/16 p0, 0x104

    return p0

    :pswitch_41
    const/16 p0, 0x103

    return p0

    :pswitch_42
    const/16 p0, 0x100

    return p0

    :pswitch_43
    const/16 p0, 0xff

    return p0

    :pswitch_44
    const/16 p0, 0xfe

    return p0

    :pswitch_45
    const/16 p0, 0xfd

    return p0

    :pswitch_46
    const/16 p0, 0xfb

    return p0

    :pswitch_47
    const/16 p0, 0xfa

    return p0

    :pswitch_48
    const/16 p0, 0xf9

    return p0

    :pswitch_49
    const/16 p0, 0xf8

    return p0

    :pswitch_4a
    const/16 p0, 0xf7

    return p0

    :pswitch_4b
    const/16 p0, 0xf6

    return p0

    :pswitch_4c
    const/16 p0, 0xf5

    return p0

    :pswitch_4d
    const/16 p0, 0xf4

    return p0

    :pswitch_4e
    const/16 p0, 0xf3

    return p0

    :pswitch_4f
    const/16 p0, 0xf2

    return p0

    :pswitch_50
    const/16 p0, 0xf1

    return p0

    :pswitch_51
    const/16 p0, 0xf0

    return p0

    :pswitch_52
    const/16 p0, 0xee

    return p0

    :pswitch_53
    const/16 p0, 0xe9

    return p0

    :pswitch_54
    const/16 p0, 0xe8

    return p0

    :pswitch_55
    const/16 p0, 0xe4

    return p0

    :pswitch_56
    const/16 p0, 0xe3

    return p0

    :pswitch_57
    const/16 p0, 0xdf

    return p0

    :pswitch_58
    const/16 p0, 0xdd

    return p0

    :pswitch_59
    const/16 p0, 0xdc

    return p0

    :pswitch_5a
    const/16 p0, 0xdb

    return p0

    :pswitch_5b
    const/16 p0, 0xda

    return p0

    :pswitch_5c
    const/16 p0, 0xce

    return p0

    :pswitch_5d
    const/16 p0, 0xcd

    return p0

    :pswitch_5e
    const/16 p0, 0xcc

    return p0

    :pswitch_5f
    const/16 p0, 0xcb

    return p0

    :pswitch_60
    const/16 p0, 0xca

    return p0

    :pswitch_61
    const/16 p0, 0xc8

    return p0

    :pswitch_62
    const/16 p0, 0xc2

    return p0

    :pswitch_63
    const/16 p0, 0xbd

    return p0

    :pswitch_64
    const/16 p0, 0xbc

    return p0

    :pswitch_65
    const/16 p0, 0xbb

    return p0

    :pswitch_66
    const/16 p0, 0xba

    return p0

    :pswitch_67
    const/16 p0, 0xb9

    return p0

    :pswitch_68
    const/16 p0, 0xb8

    return p0

    :pswitch_69
    const/16 p0, 0xb7

    return p0

    :pswitch_6a
    const/16 p0, 0xb6

    return p0

    :pswitch_6b
    const/16 p0, 0xb4

    return p0

    :pswitch_6c
    const/16 p0, 0x9a

    return p0

    :pswitch_6d
    const/16 p0, 0x99

    return p0

    :pswitch_6e
    const/16 p0, 0x98

    return p0

    :pswitch_6f
    const/16 p0, 0x97

    return p0

    :pswitch_70
    const/16 p0, 0x96

    return p0

    :pswitch_71
    const/16 p0, 0x94

    return p0

    :pswitch_72
    const/16 p0, 0x92

    return p0

    :pswitch_73
    const/16 p0, 0x91

    return p0

    :pswitch_74
    const/16 p0, 0x8f

    return p0

    :pswitch_75
    const/16 p0, 0x8e

    return p0

    :pswitch_76
    const/16 p0, 0x8d

    return p0

    :pswitch_77
    const/16 p0, 0x88

    return p0

    :pswitch_78
    const/16 p0, 0x87

    return p0

    :pswitch_79
    const/16 p0, 0x86

    return p0

    :pswitch_7a
    const/16 p0, 0x85

    return p0

    :pswitch_7b
    const/16 p0, 0x84

    return p0

    :pswitch_7c
    const/16 p0, 0x7e

    return p0

    :pswitch_7d
    const/16 p0, 0x7b

    return p0

    :pswitch_7e
    const/16 p0, 0x7a

    return p0

    :pswitch_7f
    const/16 p0, 0x79

    return p0

    :pswitch_80
    const/16 p0, 0x78

    return p0

    :pswitch_81
    const/16 p0, 0x77

    return p0

    :pswitch_82
    const/16 p0, 0x76

    return p0

    :pswitch_83
    const/16 p0, 0x75

    return p0

    :pswitch_84
    const/16 p0, 0x74

    return p0

    :pswitch_85
    const/16 p0, 0x73

    return p0

    :pswitch_86
    const/16 p0, 0x71

    return p0

    :pswitch_87
    const/16 p0, 0x6f

    return p0

    :pswitch_88
    const/16 p0, 0x6e

    return p0

    :pswitch_89
    const/16 p0, 0x6c

    return p0

    :pswitch_8a
    const/16 p0, 0x6b

    return p0

    :pswitch_8b
    const/16 p0, 0x6a

    return p0

    :pswitch_8c
    const/16 p0, 0x69

    return p0

    :pswitch_8d
    const/16 p0, 0x68

    return p0

    :pswitch_8e
    const/16 p0, 0x67

    return p0

    :pswitch_8f
    const/16 p0, 0x66

    return p0

    :pswitch_90
    const/16 p0, 0x64

    return p0

    :pswitch_91
    const/16 p0, 0x63

    return p0

    :pswitch_92
    const/16 p0, 0x62

    return p0

    :pswitch_93
    const/16 p0, 0x61

    return p0

    :pswitch_94
    const/16 p0, 0x60

    return p0

    :pswitch_95
    const/16 p0, 0x5f

    return p0

    :pswitch_96
    const/16 p0, 0x5e

    return p0

    :pswitch_97
    const/16 p0, 0x58

    return p0

    :pswitch_98
    const/16 p0, 0x55

    return p0

    :pswitch_99
    const/16 p0, 0x54

    return p0

    :pswitch_9a
    const/16 p0, 0x52

    return p0

    :pswitch_9b
    const/16 p0, 0x4f

    return p0

    :pswitch_9c
    const/16 p0, 0x4e

    return p0

    :pswitch_9d
    const/16 p0, 0x4d

    return p0

    :pswitch_9e
    const/16 p0, 0x4c

    return p0

    :pswitch_9f
    const/16 p0, 0x4a

    return p0

    :pswitch_a0
    const/16 p0, 0x48

    return p0

    :pswitch_a1
    const/16 p0, 0x44

    return p0

    :pswitch_a2
    const/16 p0, 0x43

    return p0

    :pswitch_a3
    const/16 p0, 0x40

    return p0

    :pswitch_a4
    const/16 p0, 0x3f

    return p0

    :pswitch_a5
    const/16 p0, 0x3c

    return p0

    :pswitch_a6
    const/16 p0, 0x3a

    return p0

    :pswitch_a7
    const/16 p0, 0x39

    return p0

    :pswitch_a8
    const/16 p0, 0x33

    return p0

    :pswitch_a9
    const/16 p0, 0x31

    return p0

    :pswitch_aa
    const/16 p0, 0x30

    return p0

    :pswitch_ab
    const/16 p0, 0x2f

    return p0

    :pswitch_ac
    const/16 p0, 0x2c

    return p0

    :pswitch_ad
    const/16 p0, 0x2b

    return p0

    :pswitch_ae
    const/16 p0, 0x2a

    return p0

    :pswitch_af
    const/16 p0, 0x27

    return p0

    :pswitch_b0
    const/16 p0, 0x26

    return p0

    :pswitch_b1
    const/16 p0, 0x23

    return p0

    :pswitch_b2
    const/16 p0, 0x21

    return p0

    :pswitch_b3
    const/16 p0, 0x20

    return p0

    :pswitch_b4
    const/16 p0, 0x1e

    return p0

    :pswitch_b5
    const/16 p0, 0x1d

    return p0

    :pswitch_b6
    const/16 p0, 0x1a

    return p0

    :pswitch_b7
    const/16 p0, 0x18

    return p0

    :pswitch_b8
    const/16 p0, 0x12

    return p0

    :pswitch_b9
    const/16 p0, 0x10

    return p0

    :pswitch_ba
    const/16 p0, 0xe

    return p0

    :pswitch_bb
    const/4 p0, 0x7

    return p0

    :pswitch_bc
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_bc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_bb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_ba
        :pswitch_0
        :pswitch_b9
        :pswitch_0
        :pswitch_b8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b7
        :pswitch_0
        :pswitch_b6
        :pswitch_0
        :pswitch_0
        :pswitch_b5
        :pswitch_b4
        :pswitch_0
        :pswitch_b3
        :pswitch_b2
        :pswitch_0
        :pswitch_b1
        :pswitch_0
        :pswitch_0
        :pswitch_b0
        :pswitch_af
        :pswitch_0
        :pswitch_0
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_0
        :pswitch_0
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_0
        :pswitch_a8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a7
        :pswitch_a6
        :pswitch_0
        :pswitch_a5
        :pswitch_0
        :pswitch_0
        :pswitch_a4
        :pswitch_a3
        :pswitch_0
        :pswitch_0
        :pswitch_a2
        :pswitch_a1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a0
        :pswitch_0
        :pswitch_9f
        :pswitch_0
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_0
        :pswitch_0
        :pswitch_9a
        :pswitch_0
        :pswitch_99
        :pswitch_98
        :pswitch_0
        :pswitch_0
        :pswitch_97
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_0
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_0
        :pswitch_88
        :pswitch_87
        :pswitch_0
        :pswitch_86
        :pswitch_0
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_0
        :pswitch_0
        :pswitch_7c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_0
        :pswitch_73
        :pswitch_72
        :pswitch_0
        :pswitch_71
        :pswitch_0
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6b
        :pswitch_0
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_62
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_61
        :pswitch_0
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_0
        :pswitch_57
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_56
        :pswitch_55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_54
        :pswitch_53
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_52
        :pswitch_0
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_0
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_0
        :pswitch_0
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_0
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_0
        :pswitch_35
        :pswitch_0
        :pswitch_0
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_0
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 6

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method

.method public static m(J)Ljava/lang/String;
    .locals 10

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    rem-long/2addr v0, v5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    rem-long/2addr v5, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide p0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    cmp-long v9, p0, v2

    if-lez v9, :cond_0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v8

    const-string p0, "%1d:%02d:%02d"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-array p0, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p0, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p0, v4

    const-string p1, "%1d:%02d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
