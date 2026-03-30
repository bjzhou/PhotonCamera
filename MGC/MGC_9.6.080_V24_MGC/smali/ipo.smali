.class public final synthetic Lipo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:I


# instance fields
.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lipo;->b:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "Could not find range."

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x11

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

    :goto_3
    iget-object v0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0}, Lrpz;-><init>([B)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    :goto_8
    const/16 v0, 0x1582

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v0}, Ltaf;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "No tracking session"

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    iget p0, p0, Lipo;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    new-instance p0, Lrxw;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_f
    iput v1, v0, Lsve;->b:I

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    :pswitch_0
    goto/32 :goto_2b

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p0, Lcom/google/googlex/gcam/PixelRect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p0, Lcom/google/googlex/gcam/FaceInfoVector;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_HalAfMetadata()J

    move-result-wide v2

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v0, Lsve;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    :pswitch_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object p0, Lszf;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_1a
    return-object p0

    nop

    nop

    :pswitch_3
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    :goto_1d
    return-object p0

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_4f

    nop

    nop

    :goto_1e
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    :pswitch_6
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0}, Lryd;-><init>()V

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_21
    new-instance p0, Lcom/google/googlex/gcam/HalAfMetadata;

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

    :goto_22
    const/4 v1, 0x1

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_23
    return-object p0

    nop

    :pswitch_7
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_d

    nop

    nop

    :goto_26
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_28
    iget v2, v0, Lsve;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance p0, Lryd;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p0}, Lryw;-><init>()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance p0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p0}, Lcom/google/googlex/gcam/FaceInfoVector;-><init>()V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2d
    new-instance p0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2e
    const-string v0, "No tracking session."

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_0
        :pswitch_f
        :pswitch_b
        :pswitch_1
        :pswitch_d
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :goto_31
    goto/32 :goto_4c

    nop

    nop

    :goto_32
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_33
    const v1, 0x10

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput-boolean v1, v0, Lsve;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_35
    new-instance p0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_36
    check-cast p0, Lscz;

    nop

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

    nop

    :goto_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Ltkg;->m()Ltkb;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {p0, v2, v3, v1}, Lcom/google/googlex/gcam/HalAfMetadata;-><init>(JZ)V

    goto/32 :goto_27

    nop

    nop

    :goto_3a
    return-object p0

    nop

    :pswitch_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3c
    iget-object v0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3d
    return-object p0

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_13

    nop

    nop

    :goto_3e
    new-instance p0, Ltaf;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_40
    const-string v0, "Portrait default zoom must be set."

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

    :goto_41
    new-instance p0, Lrpz;

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

    nop

    :goto_42
    invoke-direct {p0}, Lrxw;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_43
    return-object p0

    nop

    nop

    :pswitch_b
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_44
    return-object p0

    nop

    :pswitch_c
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    :goto_46
    or-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_47
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_48
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_59

    nop

    nop

    :goto_49
    invoke-direct {p0, v0}, Ltaf;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    new-instance p0, Lryw;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_4b
    return-object p0

    nop

    nop

    :pswitch_d
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4e
    invoke-direct {p0}, Lsai;-><init>()V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    new-instance p0, Ltaf;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_50
    return-object p0

    nop

    :pswitch_f
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-direct {p0}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    :goto_53
    return-object p0

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

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

    :goto_55
    new-instance p0, Ljava/util/TreeSet;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const-string v0, "Camera is not tracking, building empty AllInCapture"

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_58
    new-instance p0, Lsai;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_59
    sget-object p0, Lsve;->a:Lsve;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop
.end method
