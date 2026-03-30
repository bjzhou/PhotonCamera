.class public final synthetic Liiu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lilg;


# instance fields
.field public final synthetic a:Lijb;

.field public final synthetic b:Link;

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:Llko;


# direct methods
.method public synthetic constructor <init>(Lijb;Llko;Link;ZI)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-boolean p4, p0, Liiu;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object p3, p0, Liiu;->b:Link;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Liiu;->a:Lijb;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iput-object p2, p0, Liiu;->e:Llko;

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

    :goto_6
    iput p5, p0, Liiu;->d:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final d(Linb;IJLpro;)V
    .locals 2

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_0
    move p3, p0

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1
    invoke-virtual {p2, p3, p4}, Lfdn;->x(J)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4a

    nop

    :goto_3
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4
    iget p0, p0, Liiu;->d:I

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v0, p5}, Link;->e(Lpro;)V

    invoke-virtual {v0, p3, p4}, Link;->h(J)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p2, p1, Lijb;->a:Lpdf;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_7
    iget-object p0, p1, Lijb;->b:Lpcu;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p4, p5}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_36

    nop

    nop

    :goto_9
    sget-object p3, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p1, Lijb;->e:Lnpr;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

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

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p5, Lppo;->a:Lppo;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p5, Lhmu;->a:Lhmo;

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p3}, Lrss;->h()Z

    move-result p4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    if-eq v1, p5, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, p4, p0, v1}, Lnpr;->k(Landroid/graphics/Bitmap;ILpog;)Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_12
    if-nez p4, :cond_3

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_14
    const-string p5, "Successfully acquired YUV baseFrameImage"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1}, Lpoh;->l()Lpog;

    move-result-object v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    iget-object p3, p1, Lijb;->e:Lnpr;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    const-string p2, "Quick Postview disabled, defaulting to YuvThumbnailProcessor"

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1a
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    throw p0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_65

    nop

    nop

    :goto_1f
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p3}, Lprw;->close()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Liiu;->b:Link;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_22
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_23
    iget-boolean p5, p0, Liiu;->c:Z

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_24
    const-string v0, "ShotConfigFactory#BaseFrameCallback"

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_25
    iget-object p4, p1, Lijb;->b:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_26
    iget-object p0, p1, Lijb;->a:Lpdf;

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_27
    check-cast p3, Lprw;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_28
    sget p5, Lcom/google/android/libraries/camera/jni/yuv/YuvUtilNative;->a:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {p0, p2}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p5}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p4}, Lprw;->a()I

    move-result v1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p1, Lijb;->g:Lfdn;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_49

    nop

    :goto_2e
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {p0, p3}, Lijb;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    :goto_30
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez p3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_32
    iget-object v0, p1, Lijb;->g:Lfdn;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Lfdn;->r()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_5
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz p5, :cond_6

    nop

    goto/32 :goto_1b

    nop

    :cond_6
    goto/32 :goto_1a

    nop

    nop

    :goto_36
    invoke-virtual {p3}, Lrss;->c()Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p5}, Lpoh;->l()Lpog;

    move-result-object p5

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_38
    invoke-static {p4, p5}, Lcom/google/android/libraries/camera/jni/yuv/YuvUtilNative;->a(Lprw;Lppo;)Landroid/graphics/Bitmap;

    move-result-object p4

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p5, p5, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_3a
    invoke-virtual {p5, v0}, Lhoh;->p(Lhmn;)Z

    move-result p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3b
    const/16 p5, 0x23

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {p2, v0}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {p2, p0, p5}, Llxa;->ac(Landroid/graphics/Bitmap;I)V

    :goto_3f
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v0}, Lfdn;->s()Z

    move-result v0

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

    :goto_41
    return-void

    nop

    :goto_42
    goto/32 :goto_d

    nop

    nop

    :goto_43
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_41

    nop

    nop

    :goto_44
    check-cast p5, Ljvz;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v1, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p3, p5}, Lnpr;->m(Lpog;)Z

    move-result p3

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_48
    move p3, p5

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_1d

    nop

    nop

    :goto_4b
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object p2, p1, Lijb;->l:Lfdn;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4d
    check-cast p4, Lprw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez p5, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_7
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-ne v0, p3, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v0, v1, p3, p4}, Lkht;->b(Llxm;J)V

    :goto_51
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_52
    iget-object p1, p0, Liiu;->a:Lijb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_53
    check-cast v0, Lkht;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_54
    if-eqz v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_9
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_55
    invoke-interface {p5, p3, p4}, Ljvz;->d(J)Lprw;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v1, p1, Lijb;->c:Lkog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_57
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_58
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_59
    iget-object p5, p1, Lijb;->d:Lhoh;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_5a
    iget-object p2, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_5b
    const/4 p5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_5c
    sget-object v0, Lhmu;->aN:Lhmn;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object p5, p1, Lijb;->k:Lfdo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p5}, Lrss;->c()Ljava/lang/Object;

    move-result-object p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_5f
    iget-object p2, p0, Liiu;->e:Llko;

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

    :goto_60
    iget-object p5, p1, Lijb;->c:Lkog;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-interface {v1}, Llxa;->j()Llxm;

    move-result-object v1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget-object p0, p1, Lijb;->a:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    check-cast p5, Lrss;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-static {p3}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p3

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_66
    invoke-virtual {p3}, Lrss;->c()Ljava/lang/Object;

    move-result-object p3

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop
.end method
