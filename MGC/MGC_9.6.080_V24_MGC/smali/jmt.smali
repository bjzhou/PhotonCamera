.class public final Ljmt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfgp;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Ljmq;Lfgv;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Ljmt;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Ljmt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput p3, p0, Ljmt;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljmu;Ljny;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljmt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Ljmt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Ljmt;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(ZLfgv;)V
    .locals 3

    goto/32 :goto_22

    nop

    nop

    :goto_0
    iget-object p2, p1, Ljmx;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_1
    iget-object p2, p1, Ljmx;->E:Ljnq;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2, v1, v2}, Ljnq;->c(D)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v0, p2, Ljmu;->i:D

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    const-wide/16 v1, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iget-object p2, p0, Ljmt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_a
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :cond_0
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p2, Ljmq;

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

    :goto_c
    iput-wide v0, p2, Ljmu;->h:D

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p2, p2, Ljmq;->a:Ljmu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_46

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eq p2, v0, :cond_1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p2, p0, Ljmt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p1, 0x0

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_13
    sget-object p1, Ljmu;->a:Lsdb;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Ljmu;->l:Ljava/util/concurrent/Semaphore;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p2, p0, Ljmt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p1, p2}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_49

    nop

    nop

    :goto_17
    iget-object p2, p2, Ljmq;->a:Ljmu;

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_18
    iget-object p1, p0, Ljmt;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_19
    iput-boolean v0, p1, Ljmu;->u:Z

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Lfgv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_1c
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p0, Ljmq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget p2, p1, Ljmx;->G:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_f

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

    nop

    :goto_21
    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x1d

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p2, p1, Ljmx;->d:Ljng;

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_24
    const-string p2, "Past trial succeeded so nothing to do, shouldn\'t have gotten to this."

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_25
    iget-boolean v0, p2, Ljmu;->j:Z

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p2, v1}, Ljng;->b([F)V

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p2, p2, Ljmq;->a:Ljmu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez p2, :cond_4

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p2, v1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->c(I)V

    :goto_2e
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast p2, Ljmq;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_30
    iput-boolean p1, p2, Ljmu;->j:Z

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_32
    iget p2, p0, Ljmt;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_35
    iget-object p0, p0, Ljmq;->a:Ljmu;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_36
    check-cast p1, Ljmu;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_37
    check-cast p2, Ljmq;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p1, p0, Ljmt;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_39
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/16 p2, 0x9c3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-boolean p2, p1, Ljmx;->n:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3d
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_28

    nop

    :goto_3e
    check-cast p1, Ljmu;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_3f
    iget-object p1, p1, Ljmu;->b:Ljmx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_40
    iput-boolean v0, p1, Ljmx;->u:Z

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_41
    iget-object v1, p1, Ljmx;->E:Ljnq;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_42
    add-int/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_43
    iget-object p0, p0, Ljmt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_44
    if-nez p2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_6
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_45
    const-wide v0, -0x3f3c7d0000000000L    # -9990.0

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_c

    nop

    nop

    :goto_47
    invoke-virtual {p2, v0}, Ljmu;->d(Lfgv;)V

    :goto_48
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_31

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iput v1, p2, Ljmu;->k:I

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4c
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget v1, p2, Ljmu;->k:I

    nop

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

    :goto_4e
    invoke-virtual {v1}, Ljnq;->f()[F

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4f
    if-ge v1, v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_7
    :goto_50
    goto/32 :goto_52

    nop

    nop

    :goto_51
    iget-object p0, p0, Ljmt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_52
    iget-object v0, p0, Ljmt;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_53
    iget v1, p1, Ljmx;->x:I

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

    nop

    nop

    :goto_54
    invoke-interface {p0, p1}, Ljny;->a(Ljava/lang/Object;)V

    goto/32 :goto_33

    nop

    nop

    nop
.end method
