.class final Lfgn;
.super Lfhg;
.source "PG"


# instance fields
.field private x:Ldqy;

.field private y:Ldqy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    :goto_4
    new-instance v0, Lfht;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_7
    invoke-direct {v0, v1}, Lfht;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, "AndCamCapabs"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/hardware/Camera$Parameters;)V
    .locals 5

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lfgn;->g:Ljava/util/TreeSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_129

    nop

    nop

    nop

    :goto_2
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v3, Lfhe;->k:Lfhe;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    :cond_1
    goto/32 :goto_10a

    nop

    nop

    :goto_7
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1cf

    nop

    nop

    :goto_9
    iget-object v0, p0, Lfgn;->d:Ljava/util/TreeSet;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput v0, p0, Lfgn;->o:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, p0, Lfgn;->h:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_10
    if-nez v3, :cond_3

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1ba

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :cond_4
    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_12c

    nop

    nop

    :goto_14
    iget-object v1, p0, Lfgn;->y:Ldqy;

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v2, p0, Lfgn;->k:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lfgn;->l:Ljava/util/EnumSet;

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_17
    goto/16 :goto_b8

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_173

    nop

    nop

    nop

    nop

    :goto_19
    const-string v3, "edof"

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_5a

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p0, Lfgn;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_1e
    goto/16 :goto_5a

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v2, p0, Lfgn;->h:Ljava/util/EnumSet;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    :goto_22
    const-string v3, "fixed"

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v2, p0, Lfgn;->k:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v1

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_26
    sget-object v3, Lfhe;->q:Lfhe;

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_d8

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_29
    const-string v3, "theatre"

    nop

    nop

    nop

    goto/32 :goto_1dc

    nop

    nop

    nop

    :goto_2a
    sget-object v3, Lfhd;->g:Lfhd;

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const-string v3, "snow"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :goto_2d
    goto/32 :goto_1d1

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_195

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :goto_32
    goto/32 :goto_136

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-gtz p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v2, p0, Lfgn;->i:Ljava/util/EnumSet;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_38
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    :goto_3a
    const-string v3, "on"

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v0, p0, Lfgn;->l:Ljava/util/EnumSet;

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v3, :cond_8

    nop

    goto/32 :goto_144

    nop

    nop

    :cond_8
    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    sget-object v1, Lfhb;->b:Lfhb;

    nop

    goto/32 :goto_1c1

    nop

    nop

    :goto_42
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_43
    if-nez v3, :cond_9

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :cond_9
    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_44
    const-string v3, "daylight"

    nop

    nop

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iput v0, p0, Lfgn;->n:I

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v2, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_cf

    nop

    nop

    :goto_48
    new-instance v3, Lfhs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_49
    if-gtz p1, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_16

    nop

    nop

    :goto_4a
    sget-object v3, Lfhc;->b:Lfhc;

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v0

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v0, p0, Lfgn;->i:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez v3, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    :cond_c
    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_51
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_52
    goto :goto_5a

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_77

    nop

    nop

    :goto_54
    goto :goto_5a

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_57
    if-nez v3, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    :cond_d
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_58
    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_143

    nop

    nop

    :goto_5c
    if-nez v1, :cond_e

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_af

    nop

    nop

    :goto_5d
    goto :goto_51

    nop

    :goto_5e
    goto/32 :goto_119

    nop

    nop

    :goto_5f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_60
    new-instance v0, Ldqy;

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    :goto_61
    if-nez v3, :cond_f

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_14e

    nop

    nop

    nop

    :goto_62
    sget-object v3, Lfhf;->e:Lfhf;

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    :goto_65
    sget-object v3, Lfhc;->c:Lfhc;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-nez v3, :cond_10

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/16 :goto_d8

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_1b7

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-nez v3, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_153

    nop

    nop

    :goto_6b
    sget-object v3, Lfhf;->g:Lfhf;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_18e

    nop

    nop

    :goto_6f
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    :goto_70
    sget-object v3, Lfhe;->i:Lfhe;

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    :goto_71
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-object v2, p0, Lfgn;->h:Ljava/util/EnumSet;

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    :goto_75
    if-nez v3, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    :goto_77
    const-string v3, "beach"

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_78
    iget-object v2, p0, Lfgn;->h:Ljava/util/EnumSet;

    nop

    goto/32 :goto_1d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_199

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_7c
    iget-object v1, p0, Lfgn;->x:Ldqy;

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_7d
    sget-object v3, Lfhe;->l:Lfhe;

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/16 :goto_5a

    nop

    :goto_7f
    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    :goto_82
    if-nez v3, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    :cond_13
    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    goto/16 :goto_b8

    nop

    :goto_84
    goto/32 :goto_1e4

    nop

    nop

    nop

    nop

    nop

    :goto_85
    div-float/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v2, p0, Lfgn;->h:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    goto/16 :goto_197

    nop

    :goto_88
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    sget-object v3, Lfhe;->h:Lfhe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_8a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v2, p0, Lfgn;->j:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    if-nez v0, :cond_14

    nop

    goto/32 :goto_1ab

    nop

    nop

    :cond_14
    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    new-instance v3, Lfhs;

    nop

    nop

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    :goto_91
    sget-object v3, Lfhe;->r:Lfhe;

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_92
    goto/16 :goto_b8

    nop

    nop

    :goto_93
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_94
    sget-object v3, Lfhe;->m:Lfhe;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_95
    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v2, p0, Lfgn;->h:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    :goto_99
    iget-object v0, p0, Lfgn;->l:Ljava/util/EnumSet;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_9a
    goto/16 :goto_5a

    nop

    nop

    nop

    :goto_9b
    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    goto/16 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_1ae

    nop

    nop

    :goto_9e
    sget-object p1, Lfhb;->d:Lfhb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    if-nez v0, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_1d5

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    if-nez v0, :cond_16

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iput-object v0, p0, Lfgn;->y:Ldqy;

    nop

    goto/32 :goto_150

    nop

    nop

    :goto_a4
    invoke-virtual {p0, v0}, Lfhg;->f(Lfhd;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    :goto_a5
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_a8
    iget-object v2, p0, Lfgn;->h:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    :goto_a9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1cd

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    sget-object v0, Lfhb;->c:Lfhb;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_ac
    invoke-direct {v0, v1}, Ldqy;-><init>(I)V

    goto/32 :goto_13a

    nop

    nop

    :goto_ad
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_ae
    const-string v3, "infinity"

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_af
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    return-void

    nop

    nop

    nop

    nop

    :goto_b1
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    goto/16 :goto_97

    nop

    :goto_b3
    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    sget-object v3, Lfhe;->f:Lfhe;

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    iget-object v0, p0, Lfgn;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_b6
    iget-object v2, p0, Lfgn;->k:Ljava/util/EnumSet;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_b7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_b8
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_b9
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    goto/16 :goto_c6

    nop

    nop

    nop

    :goto_bb
    goto/32 :goto_1e1

    nop

    nop

    nop

    :goto_bc
    const-string v3, "fireworks"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_bd
    iget-object v2, p0, Lfgn;->k:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    :goto_be
    iget-object v2, p0, Lfgn;->h:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-direct {v3, v4, v1}, Lfhs;-><init>(II)V

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iget-object v2, p0, Lfgn;->j:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    new-instance v0, Landroidx/wear/ambient/SharedLibraryVersion;

    nop

    nop

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    iget-object v2, p0, Lfgn;->i:Ljava/util/EnumSet;

    nop

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    :goto_c4
    if-nez v3, :cond_17

    nop

    nop

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_c5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_c6
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/32 :goto_1e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_1d4

    nop

    nop

    :goto_ca
    if-nez v2, :cond_18

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :cond_18
    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_cb
    if-nez v2, :cond_19

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_cd
    const-string v3, "continuous-picture"

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_ce
    const-string v3, "warm-fluorescent"

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_cf
    iget-object v2, p0, Lfgn;->i:Ljava/util/EnumSet;

    nop

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_d2
    iget-object v2, p0, Lfgn;->j:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    iget-object v2, p0, Lfgn;->h:Ljava/util/EnumSet;

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_d4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_d6
    if-nez v2, :cond_1a

    nop

    goto/32 :goto_197

    nop

    nop

    :cond_1a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_d8
    goto/32 :goto_ab

    nop

    nop

    :goto_d9
    sget-object v3, Lfhe;->n:Lfhe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    :goto_da
    iput v0, p0, Lfgn;->t:F

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    :goto_db
    invoke-direct {p0, v0}, Lfhg;-><init>(Landroidx/wear/ambient/SharedLibraryVersion;)V

    goto/32 :goto_60

    nop

    nop

    :goto_dc
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    iget-object v2, p0, Lfgn;->j:Ljava/util/EnumSet;

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_de
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result p1

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    nop

    :goto_df
    iget-object v2, p0, Lfgn;->f:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_e0
    goto/16 :goto_121

    nop

    nop

    nop

    nop

    :goto_e1
    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_e2
    goto/16 :goto_c6

    nop

    nop

    nop

    nop

    :goto_e3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    goto/16 :goto_5a

    nop

    nop

    nop

    :goto_e6
    goto/32 :goto_146

    nop

    nop

    :goto_e7
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :goto_e8
    goto/32 :goto_1c5

    nop

    nop

    :goto_e9
    sget-object v3, Lfhd;->b:Lfhd;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    :goto_ec
    const-string v3, "barcode"

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_148

    nop

    nop

    :goto_ef
    if-nez v3, :cond_1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_c0

    nop

    nop

    :goto_f0
    if-nez v3, :cond_1c

    nop

    goto/32 :goto_125

    nop

    :cond_1c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    if-nez v3, :cond_1d

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_86

    nop

    nop

    nop

    :goto_f2
    if-nez v3, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_13b

    nop

    nop

    nop

    :goto_f3
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    iput v0, p0, Lfgn;->s:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1e0

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    iget-object v1, p0, Lfgn;->y:Ldqy;

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    :goto_f6
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    goto/16 :goto_c6

    nop

    nop

    :goto_f8
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    const-string v3, "night-portrait"

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    sget-object v3, Lfhf;->h:Lfhf;

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    :goto_fb
    sget-object v3, Lfhf;->c:Lfhf;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    check-cast v2, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    :goto_fe
    iput-object v0, p0, Lfgn;->m:Lfhs;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_ff
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_100
    const-string v3, "torch"

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_101
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_102
    goto/16 :goto_b8

    nop

    :goto_103
    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    :goto_104
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_105
    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    goto/16 :goto_5a

    nop

    :goto_107
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_108
    const-string v3, "fluorescent"

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    nop

    :goto_109
    const-string v3, "off"

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    :goto_10a
    iget-object v2, p0, Lfgn;->k:Ljava/util/EnumSet;

    nop

    goto/32 :goto_18a

    nop

    nop

    :goto_10b
    check-cast v1, Landroid/hardware/Camera$Size;

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_10c
    sget-object v3, Lfhd;->a:Lfhd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_10d
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_10e
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    :goto_110
    if-nez v0, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    :cond_1f
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_111
    sget-object v3, Lfhe;->d:Lfhe;

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_112
    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :goto_113
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_114
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    :goto_115
    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    :goto_116
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    nop

    nop

    :goto_117
    sget-object v1, Lfhb;->a:Lfhb;

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    :goto_118
    iget-object v1, p0, Lfgn;->y:Ldqy;

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_119
    iget-object v0, p0, Lfgn;->f:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    :goto_11a
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_11b
    if-nez v1, :cond_20

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_20
    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_9c

    nop

    nop

    :goto_11d
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_83

    nop

    nop

    :goto_11e
    invoke-direct {v0, v1}, Ldqy;-><init>(I)V

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_121
    goto/32 :goto_116

    nop

    nop

    :goto_122
    const-string v3, "party"

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_123
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_124
    goto/16 :goto_b8

    nop

    :goto_125
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_126
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_127
    if-nez v0, :cond_21

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_21
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_128
    if-nez v0, :cond_22

    nop

    nop

    nop

    nop

    goto/32 :goto_1c2

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_129
    goto/16 :goto_5a

    nop

    :goto_12a
    goto/32 :goto_12b

    nop

    nop

    nop

    :goto_12b
    const-string v3, "sunset"

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    :goto_12d
    goto/32 :goto_122

    nop

    nop

    nop

    :goto_12e
    if-nez v0, :cond_23

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    iget-object v2, p0, Lfgn;->i:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_130
    goto/16 :goto_c6

    nop

    nop

    :goto_131
    goto/32 :goto_19

    nop

    nop

    :goto_132
    if-nez v3, :cond_24

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_133
    check-cast v1, Landroid/hardware/Camera$Size;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_134
    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_135
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    :goto_136
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_137
    const/4 v1, 0x5

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_138
    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    nop

    :goto_139
    if-nez v3, :cond_25

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_13a
    iput-object v0, p0, Lfgn;->x:Ldqy;

    nop

    goto/32 :goto_16b

    nop

    nop

    :goto_13b
    iget-object v2, p0, Lfgn;->j:Ljava/util/EnumSet;

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    :goto_13c
    if-nez v0, :cond_26

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_13d
    invoke-direct {v0, v1}, Lfhs;-><init>(Landroid/hardware/Camera$Size;)V

    goto/32 :goto_fe

    nop

    nop

    :goto_13e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_13f
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    :goto_140
    iget-object v2, p0, Lfgn;->h:Ljava/util/EnumSet;

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_141
    iget-object v2, p0, Lfgn;->h:Ljava/util/EnumSet;

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    :goto_142
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    :goto_143
    goto/16 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_144
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_145
    invoke-direct {v3, v4, v1}, Lfhs;-><init>(II)V

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    :goto_146
    const-string v3, "landscape"

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    :goto_147
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_148
    if-nez v3, :cond_27

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_1e2

    nop

    nop

    nop

    nop

    :goto_149
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1de

    nop

    nop

    :goto_14a
    const-string v3, "macro"

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    iget-object v0, p0, Lfgn;->e:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14c
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1be

    nop

    nop

    nop

    nop

    :goto_14d
    sget-object v3, Lfhe;->b:Lfhe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    iget-object v2, p0, Lfgn;->h:Ljava/util/EnumSet;

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    const-string v3, "night"

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    :goto_150
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_151
    goto/16 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_152
    goto/32 :goto_14a

    nop

    nop

    :goto_153
    iget-object v2, p0, Lfgn;->j:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_154
    if-nez v2, :cond_28

    nop

    nop

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    :goto_155
    if-nez v3, :cond_29

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    :cond_29
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_156
    sget-object v3, Lfhe;->e:Lfhe;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_157
    const-string v3, "steadyphoto"

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_158
    if-nez v3, :cond_2a

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_19f

    nop

    nop

    nop

    :goto_159
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    :goto_15a
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_17

    nop

    nop

    :goto_15c
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_15f
    iget-object v0, p0, Lfgn;->b:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_160
    sget-object v3, Lfhd;->d:Lfhd;

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    :goto_161
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    :goto_162
    sget-object v3, Lfhf;->f:Lfhf;

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_163
    iget-object v2, p0, Lfgn;->k:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_164
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_165
    if-nez v3, :cond_2b

    nop

    nop

    goto/32 :goto_7f

    nop

    :cond_2b
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_166
    iget-object v2, p0, Lfgn;->h:Ljava/util/EnumSet;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_167
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    :goto_168
    sget-object v3, Lfhe;->j:Lfhe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_169
    if-nez v3, :cond_2c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    :cond_2c
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_16a
    iput v0, p0, Lfgn;->u:F

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_16b
    new-instance v0, Ldqy;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16c
    const/high16 v1, 0x42c80000    # 100.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_16d
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v1

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_16e
    sget-object v2, Lfhc;->a:Lfhc;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16f
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_170
    iget-object v1, p0, Lfgn;->b:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    :goto_171
    new-instance v3, Lfhs;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_172
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_173
    const-string v3, "incandescent"

    nop

    nop

    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    nop

    :goto_174
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_175
    if-nez v3, :cond_2d

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_2d
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_176
    sget-object v3, Lfhf;->b:Lfhf;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_177
    if-lez v0, :cond_2e

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_2e
    goto/32 :goto_3b

    nop

    :goto_178
    invoke-direct {v3, v4, v1}, Lfhs;-><init>(II)V

    goto/32 :goto_1a9

    nop

    nop

    nop

    :goto_179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_17a
    if-nez v3, :cond_2f

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_2f
    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17b
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_17c
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_17d
    if-nez v3, :cond_30

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    :cond_30
    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17e
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_17f
    const-string v3, "portrait"

    nop

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    :goto_180
    if-nez v0, :cond_31

    nop

    goto/32 :goto_e1

    nop

    nop

    :cond_31
    goto/32 :goto_120

    nop

    nop

    :goto_181
    iget-object v2, p0, Lfgn;->i:Ljava/util/EnumSet;

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    :goto_182
    sget-object v3, Lfhc;->f:Lfhc;

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_183
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_184
    if-nez v3, :cond_32

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :cond_32
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_185
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :goto_186
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_b2

    nop

    nop

    :goto_187
    if-nez v2, :cond_33

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :cond_33
    goto/32 :goto_163

    nop

    nop

    :goto_188
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_189
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_18a
    sget-object v3, Lfhf;->a:Lfhf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    :goto_18b
    if-nez v3, :cond_34

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b5

    nop

    :cond_34
    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    goto/16 :goto_5a

    nop

    nop

    :goto_18d
    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    :goto_18e
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_18f
    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_190
    if-nez v2, :cond_35

    nop

    goto/32 :goto_e3

    nop

    :cond_35
    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_191
    sget-object v3, Lfhe;->g:Lfhe;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_192
    sget-object v3, Lfhe;->o:Lfhe;

    nop

    nop

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    nop

    :goto_193
    sget-object v3, Lfhc;->d:Lfhc;

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_194
    const-string v3, "candlelight"

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_195
    iget-object v2, p0, Lfgn;->h:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_196
    goto/16 :goto_d8

    nop

    nop

    nop

    :goto_197
    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    :goto_198
    iget-object v0, p0, Lfgn;->l:Ljava/util/EnumSet;

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_199
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    goto/32 :goto_194

    nop

    nop

    nop

    :goto_19b
    iput v0, p0, Lfgn;->v:F

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_19c
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_19d
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_19e
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_19f
    iget-object v2, p0, Lfgn;->h:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a0
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a1
    goto/16 :goto_c6

    nop

    nop

    :goto_1a2
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_1a3
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :goto_1a4
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1a5
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_1a7
    const-string v3, "sports"

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_1a8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a9
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_1aa
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1ab
    goto/32 :goto_15f

    nop

    nop

    nop

    :goto_1ac
    iget-object v2, p0, Lfgn;->k:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_1ad
    iget-object v0, p0, Lfgn;->l:Ljava/util/EnumSet;

    nop

    nop

    nop

    goto/32 :goto_1e9

    nop

    nop

    :goto_1ae
    const-string v3, "twilight"

    nop

    goto/32 :goto_1bb

    nop

    nop

    nop

    :goto_1af
    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    :goto_1b0
    sget-object v3, Lfhd;->e:Lfhd;

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_1b1
    sget-object v1, Lfhb;->f:Lfhb;

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_1b2
    iget-object p1, p0, Lfgn;->l:Ljava/util/EnumSet;

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_1b4
    goto/16 :goto_d8

    nop

    nop

    nop

    nop

    :goto_1b5
    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_1b6
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    nop

    :goto_1b7
    const-string v3, "red-eye"

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    :goto_1b8
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    iget-object v2, p0, Lfgn;->j:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e3

    nop

    nop

    :goto_1ba
    iget-object v2, p0, Lfgn;->k:Ljava/util/EnumSet;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_1bb
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_1db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bc
    invoke-direct {v0}, Landroidx/wear/ambient/SharedLibraryVersion;-><init>()V

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_1bd
    if-nez v0, :cond_36

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    :cond_36
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1be
    goto/16 :goto_b8

    nop

    nop

    :goto_1bf
    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c0
    const-string v3, "hdr"

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1c1
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :goto_1c2
    goto/32 :goto_1ca

    nop

    nop

    nop

    :goto_1c3
    iput p1, p0, Lfgn;->r:I

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c4
    if-nez v3, :cond_37

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_37
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_1c5
    sget-object v0, Lfhd;->a:Lfhd;

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_1c6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c7
    const-string v3, "cloudy-daylight"

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_1c8
    sget-object v3, Lfhc;->e:Lfhc;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_1c9
    sget-object v3, Lfhe;->c:Lfhe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    :goto_1ca
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_1cb
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1cc
    sget-object v3, Lcom/google/android/apps/camera/jni/gyro/xfsr/FACWQLkhP;->qRbTRpLVXr:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cd
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1ce
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_1cf
    if-nez v0, :cond_38

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    :cond_38
    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_1d0
    const-string v1, "auto"

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    :goto_1d1
    iget p1, p0, Lfgn;->s:I

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d2
    iget-object v2, p0, Lfgn;->h:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1d3
    iget-object v2, p0, Lfgn;->e:Ljava/util/ArrayList;

    nop

    goto/32 :goto_171

    nop

    nop

    :goto_1d4
    if-nez v3, :cond_39

    nop

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    nop

    :cond_39
    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_1d5
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_1d6
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1d7
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d8
    sget-object v3, Lfhe;->p:Lfhe;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d9
    goto/16 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_1da
    goto/32 :goto_3a

    nop

    nop

    :goto_1db
    if-nez v3, :cond_3a

    nop

    goto/32 :goto_93

    nop

    :cond_3a
    goto/32 :goto_b6

    nop

    nop

    :goto_1dc
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_1dd
    iput v0, p0, Lfgn;->p:F

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1de
    iput v0, p0, Lfgn;->q:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1df
    sget-object v3, Lfhf;->d:Lfhf;

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_1e0
    new-instance v0, Lfhs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    nop

    :goto_1e1
    const-string v3, "continuous-video"

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_1e2
    iget-object v2, p0, Lfgn;->h:Ljava/util/EnumSet;

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_1e3
    sget-object v3, Lfhd;->c:Lfhd;

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    :goto_1e4
    const-string v3, "shade"

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e5
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    nop

    :goto_1e6
    if-nez v1, :cond_3b

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    :cond_3b
    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    nop

    :goto_1e7
    check-cast v1, Landroid/hardware/Camera$Size;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e8
    sget-object v3, Lfhd;->f:Lfhd;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1e9
    sget-object v1, Lfhb;->e:Lfhb;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lfgn;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Ldqy;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfgn;->y:Ldqy;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    new-instance p1, Ldqy;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Lfhg;-><init>(Lfhg;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lfgn;->x:Ldqy;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1, v0}, Ldqy;-><init>(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    invoke-direct {p1, v0}, Ldqy;-><init>(I)V

    goto/32 :goto_1

    nop

    nop
.end method
