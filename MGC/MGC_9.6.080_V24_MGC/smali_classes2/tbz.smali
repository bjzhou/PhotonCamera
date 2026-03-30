.class public final synthetic Ltbz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/googlex/gcam/hdrplus/MergedChromaDenoisedCallback;


# instance fields
.field public final synthetic a:Limz;


# direct methods
.method public synthetic constructor <init>(Limz;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ltbz;->a:Limz;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final accept(IJJ)I
    .locals 7

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p2, Lcom/google/android/apps/camera/ui/eduimageview/JrT/cUhjhcVVea;->CvycC:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_1
    const-string p2, "Cannot find session for shot_id = %s"

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Ligu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_3
    invoke-interface {p0, p1}, Lsdo;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    const-string p2, "doneWriting() must be called before getImage."

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Lhtt;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_0
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0, p1}, Lsdo;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_9
    iget-object v5, p0, Ligu;->b:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p3}, Linb;->a()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    sget-object p0, Lifx;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p2, Lifu;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_e
    throw p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    iget-object p1, p0, Ligu;->a:Ligg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_11
    iget-object p1, p3, Linb;->l:Lind;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    iget-object v4, p0, Lsyx;->a:Lcom/google/googlex/gcam/InterleavedImageS16;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0, p2, p1}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p0, Lilk;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_15
    iget-boolean p1, p0, Lsyx;->b:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_64

    nop

    :goto_17
    invoke-interface {p0, p2, p1}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_18
    const/4 p1, 0x0

    nop

    nop

    :goto_19
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1b
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v1, Lcom/google/googlex/gcam/ShotMetadata;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_20
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_21
    const/16 p1, 0x5ab

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_22
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_24
    const/4 p0, 0x2

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

    :goto_25
    const/16 p1, 0x5ac

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p0, p1}, Llxa;->b(Ljava/lang/Throwable;)V

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2a
    iput-object p2, p0, Ligu;->d:Lubk;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_2b
    invoke-direct/range {v0 .. v6}, Lifu;-><init>(Lcom/google/googlex/gcam/ShotMetadata;Ligg;Linb;Lcom/google/googlex/gcam/InterleavedImageS16;[FLigu;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p3, Linb;->l:Lind;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p0, p1}, Lilk;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidAllocationId_get()J

    move-result-wide p4

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_31
    if-eqz v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_33
    goto/16 :goto_41

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_36
    iget-object p0, p0, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p0, p0, Ligd;->a:Lifx;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_38
    move-object v3, p3

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_39
    check-cast p0, Ligd;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v1, p4, p5}, Lcom/google/googlex/gcam/ShotMetadata;-><init>(J)V

    goto/32 :goto_30

    nop

    nop

    :goto_3b
    invoke-direct {p1, p2}, Lhtt;-><init>(Ljava/lang/String;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object p0, Lifx;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_40
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_42
    goto :goto_41

    nop

    nop

    :goto_43
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_44
    check-cast p3, Linb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object p0, p1, Lind;->c:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_3
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    check-cast p0, Lsyx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_c

    nop

    nop

    :goto_4a
    invoke-static {p2, p1}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p3}, Linb;->a()I

    move-result p1

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const v0, 0x3

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4d
    iget-object p0, p0, Ltbz;->a:Limz;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_19

    nop

    nop

    :goto_50
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_51
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_52
    iget-object p3, p0, Limz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_53
    const/4 p0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    check-cast p3, Linb;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const-string p2, "Cannot find pose for shot_id = %s. Ignoring shot"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    move-object v6, p0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_57
    move-object v2, p1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-nez p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p3}, Linb;->a()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object p0, p0, Lifx;->k:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_5b
    invoke-virtual {p1, p3}, Ligg;->a(Linb;)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p3}, Linb;->a()I

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object p0, p3, Linb;->w:Llko;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const-string p4, "Chroma denoise for shot_id = "

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_5f
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_60
    iget-object p0, p0, Limz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_61
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_62
    invoke-static {p1, p2}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_54

    nop

    nop

    :goto_63
    const-string p2, " complete"

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_64
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_66
    cmp-long p2, p2, p4

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object p0, p0, Lind;->c:Lrss;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {p3}, Linb;->a()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_69
    move-object v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    return p0

    nop

    nop

    :goto_6b
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_6c
    if-nez p2, :cond_5

    nop

    goto/32 :goto_6b

    nop

    nop

    :cond_5
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_6d
    if-eqz p0, :cond_6

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_6e
    new-instance p3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop
.end method
