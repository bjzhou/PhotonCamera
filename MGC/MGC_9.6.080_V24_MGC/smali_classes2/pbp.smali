.class public final Lpbp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpak;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lpbj;

.field public c:I

.field public d:Lgtu;

.field private final e:Landroid/location/Location;

.field private final f:Ljava/io/FileDescriptor;

.field private final g:Lsuk;

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>(Lpbo;)V
    .locals 14

    goto/32 :goto_20

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_81

    nop

    nop

    :goto_1
    iput-object v0, p0, Lpbp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-wide/16 v3, 0x0

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v2, p0, Lpbp;->b:Lpbj;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v1, v6, Lozj;->b:I

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-gtz v1, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x5

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_c
    check-cast v3, Landroid/location/Location;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v1, v1, Lozb;->g:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_89

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v2, v10, v11}, Lpbj;->p(J)V

    :goto_11
    :try_start_0
    invoke-interface {v2}, Lpbj;->d()V
    :try_end_0
    .catch Lpbh; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_9c

    nop

    nop

    :goto_13
    invoke-interface {v2, v1}, Lpbj;->i(I)V

    :goto_14
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v6, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_17
    throw v1

    nop

    :goto_18
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_19
    const-string p0, "Either output file path or descriptor should present"

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_1a
    iget-object v1, v5, Lozm;->b:Lozg;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    int-to-double v3, v1

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, v6, Lozj;->a:Lozb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v2, v1}, Lpbj;->y(I)V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v7}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x4

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v2, v0}, Lpbj;->n(Landroid/view/Surface;)V

    :goto_22
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_23
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v2}, Lpbj;->f()V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_26
    invoke-interface {v2}, Lpbj;->f()V

    goto/32 :goto_2c

    nop

    nop

    :goto_27
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v5}, Lozm;->a()I

    goto/32 :goto_5f

    nop

    nop

    :goto_2a
    invoke-virtual {v1}, Lozg;->b()Lpck;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v5}, Lozm;->b()I

    move-result v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v12

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p1, Lpbo;->h:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v2, v1}, Lpbj;->x(I)V

    goto/32 :goto_76

    nop

    nop

    :goto_2f
    invoke-interface {v2, v1}, Lpbj;->w(I)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v4, v5, Lozm;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_31
    invoke-static {v0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast v0, Ljava/io/FileDescriptor;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v8}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_35
    return-void

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iput v0, p0, Lpbp;->c:I

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_37
    invoke-virtual {v1}, Lozg;->b()Lpck;

    move-result-object v1

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_38
    invoke-interface {v2, v1}, Lpbj;->r(Landroid/media/MediaRecorder$OnErrorListener;)V

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget v1, v5, Lozm;->e:I

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v2, v9}, Lpbj;->t(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v7, Lnys;->a:[I

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-ne v4, v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_3d
    iget v3, p1, Lpbo;->l:I

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_3e
    iget v9, p1, Lpbo;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v6, p1, Lpbo;->d:Lozj;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_40
    new-instance v1, Lpbn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-interface {v2, v1}, Lpbj;->z(I)V

    goto/32 :goto_29

    nop

    nop

    :goto_42
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_5
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast v0, Ljava/io/FileDescriptor;

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v0, Landroid/view/Surface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v2, p1, Lpbo;->b:Lpbj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_46
    iget-object v1, v5, Lozm;->b:Lozg;

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_47
    check-cast v1, Landroid/location/Location;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v0, p1, Lpbo;->a:Lsuk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v2, p1, Lpbo;->i:Landroid/location/Location;

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v2}, Lpbj;->a()Landroid/media/MediaRecorder;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v1, v6, Lozj;->a:Lozb;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v4, p1, Lpbo;->j:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_52
    invoke-virtual {v5}, Lozm;->b()I

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-interface {v2, v1}, Lpbj;->h(I)V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_94

    nop

    :goto_55
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_56
    if-nez v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_6
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_59
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_7
    goto/32 :goto_27

    nop

    :goto_5a
    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-static {v1}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v5, p1, Lpbo;->e:Lozm;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_5e
    const-string v13, "MedRecPrep"

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v5}, Lozm;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_60
    move v1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_62
    cmp-long v1, v10, v3

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_63
    double-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_64
    invoke-virtual {v8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_65
    iget v1, v6, Lozj;->e:I

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_66
    if-nez v6, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_67
    invoke-static {v4}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_68
    goto :goto_61

    nop

    nop

    :goto_69
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v3, v1, v4}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    :goto_6b
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    double-to-float v1, v3

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget v3, v3, Lpck;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_6f
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_8d

    nop

    nop

    :goto_70
    iget-object v8, p1, Lpbo;->i:Landroid/location/Location;

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_71
    iget-wide v10, p1, Lpbo;->f:J

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-interface {v2, v1}, Lpbj;->l(I)V

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_73
    iput-object v0, p0, Lpbp;->g:Lsuk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_74
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget v1, v5, Lozm;->f:I

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_77
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_78
    if-nez v12, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_a
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v5}, Lozm;->c()I

    goto/32 :goto_86

    nop

    nop

    :goto_7a
    iget v1, v6, Lozj;->c:I

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_7b
    iget v2, p1, Lpbo;->g:I

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-static {v13, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_7d
    iput-object v2, p0, Lpbp;->e:Landroid/location/Location;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    if-nez p1, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_7f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_80
    invoke-interface {v2, v3, v4}, Lpbj;->m(D)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_83
    if-ne v3, v1, :cond_c

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

    :cond_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-direct {v1, p1}, Lpbn;-><init>(Lpbo;)V

    goto/32 :goto_38

    nop

    nop

    :goto_85
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v5}, Lozm;->c()I

    move-result v1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    move-object v0, v1

    nop

    nop

    :goto_89
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iput-object p1, p0, Lpbp;->d:Lgtu;

    nop

    :goto_8b
    goto/32 :goto_36

    nop

    nop

    :goto_8c
    const-string p1, "immediateFailedFuture: MediaRecorder.prepare() exception: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iput-object v0, p0, Lpbp;->f:Ljava/io/FileDescriptor;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    check-cast v0, Ljava/io/File;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_91
    invoke-static {v8}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iput v3, p0, Lpbp;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_93
    invoke-interface {v2, v0}, Lpbj;->v(Ljava/lang/String;)V

    :goto_94
    goto/32 :goto_75

    nop

    nop

    :goto_95
    invoke-interface {v2}, Lpbj;->D()V

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iget-object p1, p1, Lpbo;->k:Lgtu;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-interface {v2, v0}, Lpbj;->u(Ljava/io/FileDescriptor;)V

    goto/32 :goto_54

    nop

    nop

    :goto_98
    if-ne v1, v3, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_99
    iget v1, v1, Lpck;->b:I

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-static {v13, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9b
    invoke-interface {v2, v1}, Lpbj;->j(I)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-static {v0}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_9d
    iget v1, v1, Lozf;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_9e
    invoke-interface {v2, v1, v3}, Lpbj;->o(FF)V

    :goto_9f
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-interface {v2, v3, v1}, Lpbj;->A(II)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    iput v2, p0, Lpbp;->h:I

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_a2
    iget-object v1, v5, Lozm;->a:Lozf;

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_a3
    invoke-interface {v2, v1}, Lpbj;->k(I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lpbp;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final b()Lrss;
    .locals 3

    goto/32 :goto_b

    nop

    nop

    :goto_0
    throw p0

    nop

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
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lpbp;->c:I

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    goto :goto_3

    nop

    :cond_0
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v1}, Lrrf;->x(Z)V

    iget-object p0, p0, Lpbp;->b:Lpbj;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lpbj;->b()Landroid/view/Surface;

    move-result-object p0

    nop

    invoke-static {p0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_6
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lpbp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()Lrss;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpbp;->e:Landroid/location/Location;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-static {p0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop
.end method

.method public final close()V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    const v0, 0x2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_3
    goto :goto_4

    nop

    nop

    :catch_0
    :try_start_0
    const-string v1, "VidRecMedRec"

    nop

    nop

    nop

    nop

    nop

    const-string v3, "Fails to stop mediarecorder. Perhaps the recording is too short"

    nop

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_4
    iput v2, p0, Lpbp;->c:I

    nop

    nop

    monitor-exit v0

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lpbp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x10

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :cond_2
    :try_start_1
    iget-object v1, p0, Lpbp;->b:Lpbj;

    nop

    nop

    invoke-interface {v1}, Lpbj;->C()V

    iget-object v1, p0, Lpbp;->d:Lgtu;

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lgtu;->c()V
    :try_end_1
    .catch Lpbh; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    monitor-enter v0

    nop

    nop

    :try_start_2
    iget v1, p0, Lpbp;->c:I

    nop

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_2

    nop

    nop

    const-string p0, "VidRecMedRec"

    nop

    const-string v1, "Already stopped"

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/lang/String;)Lrss;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()Lrss;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    const-string v0, "Unsupported operation, please use VideoRecorderMediaCodec instead"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

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

    nop
.end method

.method public final f()Lrss;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    const-string v0, "Unsupported operation, please use VideoRecorderMediaCodec instead"

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final g()Lsui;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    const-string v0, "fast shutdown is not supported, please use VideoRecorderMediaCodec"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop
.end method

.method public final h(Lpah;)Lsui;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lpbl;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, v0}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0, p1}, Lpbl;-><init>(Lpbp;Lpah;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lpbp;->g:Lsuk;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final i()Lsui;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    const v0, 0x18

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0, v1}, Lpbm;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lpbp;->g:Lsuk;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, v0}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x8

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_b
    new-instance v0, Lpbm;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final j(J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    :goto_3
    const-string p1, "Not supported operation, please use VideoRecorderMediaCodec instead"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k(I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const-string p1, "Not supported operation, please use VideoRecorderMediaCodec instead"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l(Landroid/media/MediaFormat;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const-string p1, "Not supported operation, please use VideoRecorderMediaCodec instead"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop
.end method

.method public final m(Ljava/io/FileDescriptor;)V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iget-object v0, p0, Lpbp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x19

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    const v1, 0x18

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget v1, p0, Lpbp;->c:I

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_1

    nop

    const/4 v2, 0x4

    nop

    if-ne v1, v2, :cond_0

    nop

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :cond_1
    :goto_a
    invoke-static {v3}, Lrrf;->x(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lpbp;->b:Lpbj;

    nop

    nop

    invoke-interface {p0, p1}, Lpbj;->q(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Lpbh; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catch_0
    move-exception p0

    nop

    const-string p1, "VidRecMedRec"

    nop

    const-string v1, "Fail to set next file descriptor."

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    const-string v1, "Fail to set next file descriptor."

    nop

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop
.end method

.method public final n(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    :goto_3
    const-string p1, "Not supported operation, please use VideoRecorderMediaCodec instead"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final o(Lprw;JZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "Not supported operation, please use VideoRecorderMediaCodec instead"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final p(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    :goto_3
    const-string p1, "Not supported operation, please use VideoRecorderMediaCodec instead"

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final q()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lmaq;

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

    nop

    :goto_2
    iget-object p0, p0, Lpbp;->g:Lsuk;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    invoke-direct {v0, p0, v1}, Lmaq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

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

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_7
    invoke-interface {p0, v0}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final r()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v0}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    goto/32 :goto_c

    nop

    nop

    :goto_1
    const/16 v1, 0xa

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

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    invoke-direct {v0, p0, v1}, Lmaq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lmaq;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    const v0, 0x4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lpbp;->g:Lsuk;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final s(F)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "changeBitrate is not supported, please use VideoRecorderMediaCodec"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
