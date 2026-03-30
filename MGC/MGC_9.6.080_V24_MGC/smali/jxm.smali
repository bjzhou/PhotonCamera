.class public Ljxm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final a:Lsdb;


# instance fields
.field private final A:Ljava/util/concurrent/atomic/AtomicLong;

.field private final B:Ljava/util/concurrent/atomic/AtomicLong;

.field private final C:Ljava/util/concurrent/atomic/AtomicLong;

.field private final D:Ljava/util/concurrent/atomic/AtomicLong;

.field private final E:Ljava/util/concurrent/atomic/AtomicLong;

.field private final F:Ljava/util/concurrent/atomic/AtomicLong;

.field private final G:Ljava/util/concurrent/atomic/AtomicLong;

.field private H:Liha;

.field private final I:Ljava/util/concurrent/atomic/AtomicInteger;

.field private J:J

.field private K:J

.field private L:Ljava/util/List;

.field private final M:Lnpr;

.field private N:Ljwk;

.field public final b:Ljvz;

.field public final c:Ljwx;

.field public final d:Landroid/os/Handler;

.field public final e:Landroid/os/Handler;

.field public final f:Lrss;

.field public final g:Ljww;

.field public volatile h:Z

.field public final i:Ljava/util/concurrent/atomic/AtomicLong;

.field public final j:Ljava/util/concurrent/atomic/AtomicLong;

.field public final k:Ljava/util/concurrent/atomic/AtomicLong;

.field public final l:Ljava/util/concurrent/atomic/AtomicLong;

.field public final m:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final o:Lqht;

.field public p:Lqjb;

.field public q:Lqjy;

.field public r:Z

.field public s:Z

.field public final t:Ljxy;

.field public final u:Llky;

.field private final v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final w:Lrss;

.field private final x:Lqhi;

.field private volatile y:Ljxq;

.field private final z:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "jxm"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Ljxm;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Liof;Ljvz;Ljxy;Ljww;Ljwx;Lrss;Ljxt;)V
    .locals 4

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/32 v1, 0x2dc6c0

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_3
    sget-object p0, Lhmq;->a:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    mul-int/lit8 v0, v0, 0x3c

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p5, p0, Ljxm;->c:Ljwx;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Ljxm;->i:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2e

    nop

    nop

    :goto_9
    iput-object v0, p0, Ljxm;->j:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p6, p0, Ljxm;->f:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Ljxm;->F:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p2}, Lows;-><init>()V

    goto/32 :goto_7d

    nop

    nop

    :goto_f
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Ljxm;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_11
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    :goto_13
    invoke-virtual {p1, p2}, Liof;->d(Ljava/lang/String;)Lqht;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean v1, p0, Ljxm;->s:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    :goto_18
    iput-object p2, p0, Ljxm;->H:Liha;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_19
    const-string p2, "stabilized-vid-track"

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Ljxm;->I:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_1b
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    :goto_1c
    goto/32 :goto_37

    nop

    nop

    :goto_1d
    invoke-direct {p2, p1, p4}, Liha;-><init>(Lqht;I)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v0, p0, Ljxm;->m:Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_1f
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_21
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_22
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {}, Lqhi;->d()Lqhi;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object p2, p0, Ljxm;->d:Landroid/os/Handler;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v0, Lhmz;->a:Lhmo;

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_28
    iput-object v0, p0, Ljxm;->x:Lqhi;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

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

    :goto_2a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_2b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2d
    invoke-static {v0}, Lnzk;->J(I)Lnpr;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object v0, p0, Ljxm;->E:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_30
    long-to-int v0, v0

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

    :goto_31
    iput-object p2, p0, Ljxm;->b:Ljvz;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

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

    :goto_33
    iput-object v0, p0, Ljxm;->G:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput-object p1, p0, Ljxm;->p:Lqjb;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput-boolean v1, p0, Ljxm;->h:Z

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_36
    const v1, 0x8

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_37
    iput-object p1, p0, Ljxm;->w:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_38
    const/4 p4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

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

    :goto_3b
    iput-object v0, p0, Ljxm;->A:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_3c
    new-instance p2, Lows;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iput-object p3, p0, Ljxm;->t:Ljxy;

    nop

    nop

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

    :goto_3e
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3f
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_40
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_41
    iput-object v0, p0, Ljxm;->C:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_42
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_43
    iget-object p2, p7, Ljxt;->b:Lpnu;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p2}, Liha;->a()Lqjb;

    move-result-object p1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_45
    iput-object v0, p0, Ljxm;->k:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_46
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {p2, p3}, Lolx;->bj(Lows;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p2

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_48
    invoke-static {p2, p3}, Lolx;->bj(Lows;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p2

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iput-object p1, p0, Ljxm;->o:Lqht;

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_4a
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4c
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_4d
    invoke-interface {p2}, Lpnu;->l()Lpog;

    move-result-object p2

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iput-object p1, p0, Ljxm;->q:Lqjy;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_50
    iput-object v0, p0, Ljxm;->B:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iput-object v0, p0, Ljxm;->L:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const-string p3, "mv-vid-update"

    nop

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

    :goto_53
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_7a

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    :goto_54
    invoke-direct {p2}, Lows;-><init>()V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_56
    invoke-virtual {p1, p2}, Liha;->b(Ljava/util/List;)Lqjy;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_58
    invoke-direct {p2, p1, p3, p4}, Llky;-><init>(Lqht;II)V

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_59
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iput-object p4, p0, Ljxm;->g:Ljww;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5c
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iput-wide v0, p0, Ljxm;->K:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_5e
    iput-object v0, p0, Ljxm;->z:Ljava/util/concurrent/atomic/AtomicLong;

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

    :goto_5f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_60
    iput-wide v0, p0, Ljxm;->J:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_61
    iget-object p1, p7, Ljxt;->d:Lnpr;

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

    :goto_62
    iput-object v0, p0, Ljxm;->D:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_64
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_66
    iput-object v0, p0, Ljxm;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

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

    :goto_68
    sget-object p1, Ljxt;->a:Lqhi;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_69
    iput-boolean v1, p0, Ljxm;->r:Z

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6a
    iput-object p2, p0, Ljxm;->e:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-interface {p4}, Ljww;->a()I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p1, p2}, Lnpr;->m(Lpog;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_6d
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_6e
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object p1, p0, Ljxm;->H:Liha;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_70
    iput-object v0, p0, Ljxm;->l:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_71
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_72
    iput-object v0, p0, Ljxm;->M:Lnpr;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-static {}, Lqhi;->d()Lqhi;

    move-result-object v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_74
    iput-object p2, p0, Ljxm;->u:Llky;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_76
    new-instance p2, Lows;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_77
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_33

    nop

    nop

    :goto_79
    goto/16 :goto_1c

    nop

    :goto_7a
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_7b
    new-instance p2, Liha;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_7c
    new-instance p2, Llky;

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

    nop

    :goto_7d
    const-string p3, "mv-vid-encode"

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
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm()V
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v0}, Ljwx;->b(Z)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ljxm;->E:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Ljxm;->s:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/32 :goto_9

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/32 :goto_14

    nop

    nop

    :goto_6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Ljxm;->D:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-wide/16 v1, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Ljxm;->A:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Ljxm;->B:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/32 :goto_10

    nop

    nop

    :goto_10
    iget-object v0, p0, Ljxm;->i:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_12
    iget-object v1, p0, Ljxm;->c:Ljwx;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Ljxm;->f()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Ljxm;->j:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x1d

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Ljxm;->z:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/32 :goto_c

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(J)Ljwp;
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Ljxm;->M:Lnpr;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
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

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Ljxm;->M:Lnpr;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1, p2}, Lnpr;->a(J)Lpci;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljwp;

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    new-instance v1, Ljwp;

    nop

    nop

    nop

    new-instance v2, Lsuu;

    nop

    nop

    nop

    invoke-direct {v2}, Lsuu;-><init>()V

    new-instance v3, Lsuu;

    nop

    nop

    nop

    invoke-direct {v3}, Lsuu;-><init>()V

    invoke-direct {v1, p1, p2, v2, v3}, Ljwp;-><init>(JLsuu;Lsuu;)V

    iget-object p0, p0, Ljxm;->M:Lnpr;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1, p2, v1}, Lnpr;->e(JLjava/lang/Object;)V

    :cond_1
    monitor-exit v0

    nop

    return-object v1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    new-instance v1, Ljsp;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v2, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_11

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
    goto/32 :goto_4

    nop

    nop

    :goto_4
    iget-object v0, p0, Ljxm;->d:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    iget-boolean v0, p0, Ljxm;->h:Z

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_a
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    invoke-direct {v1, p0, v2}, Ljsp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 3

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, v1, p0}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljww;->b()Lsui;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3
    const v1, 0x12

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

    :goto_4
    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "Shutdown already called. Skipping additional requests."

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    :goto_c
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1, v0}, Lkav;->a(Ljava/lang/String;Lsui;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v1, Ljsp;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v0, 0xae8

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
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

    :goto_12
    goto/32 :goto_6

    nop

    :goto_13
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    :goto_14
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    :goto_16
    iget-object v0, p0, Ljxm;->g:Ljww;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Ljxm;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_19
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Ljxm;->f()V

    goto/32 :goto_16

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    :goto_1d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/16 v2, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object p0, Ljxm;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_20
    const-string v1, "VideoTrackSampler"

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_23
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_24
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v1, p0, v2}, Ljsp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized close()V
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    iget-object v0, p0, Ljxm;->b:Ljvz;

    nop

    iget-wide v1, p0, Ljxm;->K:J

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, v2}, Ljvz;->g(J)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_3

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    iget-object v3, p0, Ljxm;->f:Lrss;

    nop

    nop

    invoke-virtual {v3}, Lrss;->h()Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    iget-object v3, p0, Ljxm;->f:Lrss;

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lhta;

    nop

    invoke-interface {v3, v1, v2}, Lhta;->e(J)V

    :cond_2
    invoke-virtual {p0}, Ljxm;->b()V

    goto :goto_9

    nop

    nop

    nop

    :cond_3
    iget-object v0, p0, Ljxm;->d:Landroid/os/Handler;

    nop

    nop

    new-instance v1, Ljxk;

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Ljxk;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x14

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
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-enter p0

    nop

    nop

    nop

    :try_start_2
    iget-boolean v0, p0, Ljxm;->h:Z

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    sget-object v0, Ljxm;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/16 v1, 0xae0

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const-string v1, "Trying to close after handler shutdown"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
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
.end method

.method public final d()V
    .locals 14

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ljvz;->a()J

    move-result-wide v0

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_5
    cmp-long v2, v0, v2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_1c

    nop

    nop

    :goto_7
    goto/32 :goto_17

    nop

    nop

    :goto_8
    iget-object v2, p0, Ljxm;->F:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    :goto_a
    const-string v1, "Sampling video on a non-video-encoder thread"

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    invoke-interface {v1}, Lprw;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    cmp-long v0, v0, v2

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_10
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :goto_12
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-wide v2, p0, Ljxm;->K:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_14
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Ljxm;->b:Ljvz;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    :goto_19
    goto/32 :goto_26

    nop

    nop

    :goto_1a
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    throw p0

    nop

    :cond_4
    :goto_1c
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v1}, Ljww;->d()Z

    move-result v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_5

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_30

    nop

    :goto_1f
    invoke-interface {v1, v2, v3}, Ljvz;->c(J)Lprw;

    move-result-object v1

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_20
    iget-object v2, p0, Ljxm;->d:Landroid/os/Handler;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_22
    iget-object v1, p0, Ljxm;->g:Ljww;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x5

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

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_26
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_27
    goto :goto_29

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    nop

    nop

    nop

    const-string v2, "Future expected to be in done state but was not."

    nop

    nop

    nop

    invoke-direct {v0, v2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    nop

    :cond_7
    :goto_28
    iget-boolean v0, p0, Ljxm;->r:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_8

    nop

    invoke-direct {p0}, Ljxm;->d5484163cd8d335e6b17663474ff5f2bm()V

    invoke-virtual {p0}, Ljxm;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    :goto_29
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-boolean v1, p0, Ljxm;->s:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Ljxm;->b:Ljvz;

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

    nop

    :goto_2c
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2d
    sget-object v0, Ljxm;->a:Lsdb;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

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

    :goto_2f
    const/16 v1, 0xaeb

    nop

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

    :goto_30
    goto/32 :goto_19

    nop

    :goto_31
    goto/32 :goto_2e

    nop

    nop

    :goto_32
    invoke-interface {v1}, Lprw;->close()V

    goto/32 :goto_42

    nop

    nop

    :goto_33
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_9
    :try_start_2
    iget-object v2, p0, Ljxm;->G:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lprw;->d()J

    move-result-wide v3

    nop

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_34

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/16 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Ljxm;->r:Z

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Ljxm;->d5484163cd8d335e6b17663474ff5f2bm()V

    invoke-virtual {p0}, Ljxm;->c()V

    return-void

    nop

    nop

    nop

    nop

    :cond_a
    invoke-interface {v1}, Lprw;->d()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    iget-wide v4, p0, Ljxm;->J:J

    nop

    nop

    nop

    sub-long v6, v2, v4

    nop

    nop

    nop

    nop

    nop

    const-wide/32 v8, 0x1dcd6500

    nop

    nop

    cmp-long v6, v6, v8

    nop

    nop

    const-wide/16 v7, 0x0

    nop

    nop

    nop

    nop

    if-lez v6, :cond_b

    nop

    cmp-long v4, v4, v7

    nop

    if-lez v4, :cond_b

    nop

    nop

    sget-object v4, Ljxm;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    const/16 v5, 0xaea

    nop

    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    check-cast v4, Lscz;

    nop

    nop

    nop

    const-string v5, "Large gap %dNs in the encoder input frames between frame %d and %d."

    nop

    nop

    nop

    nop

    nop

    iget-wide v9, p0, Ljxm;->J:J

    nop

    nop

    nop

    nop

    sub-long v9, v2, v9

    nop

    nop

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    nop

    iget-wide v9, p0, Ljxm;->J:J

    nop

    nop

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    nop

    nop

    invoke-interface {v4, v5, v6, v9, v10}, Lscz;->G(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    iput-wide v2, p0, Ljxm;->J:J

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    invoke-virtual {v4, v2, v3, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    nop

    iget-object v6, p0, Ljxm;->B:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    nop

    nop

    nop

    cmp-long v6, v9, v7

    nop

    if-lez v6, :cond_c

    nop

    nop

    nop

    iget-object v6, p0, Ljxm;->B:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    sub-long v6, v2, v6

    nop

    nop

    nop

    nop

    const-wide v8, 0x12a05f200L

    nop

    nop

    nop

    nop

    nop

    cmp-long v6, v6, v8

    nop

    nop

    nop

    nop

    if-gtz v6, :cond_c

    nop

    nop

    nop

    iget-object v6, p0, Ljxm;->B:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    cmp-long v6, v2, v6

    nop

    nop

    nop

    if-gez v6, :cond_d

    nop

    nop

    :cond_c
    iget-object v6, p0, Ljxm;->B:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-virtual {p0}, Ljxm;->f()V

    :cond_d
    invoke-virtual {v0, v4, v5}, Ljwk;->e(J)Luoj;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Luoj;->k()Z

    move-result v4

    nop

    nop

    nop

    const/16 v5, 0x12

    nop

    nop

    nop

    if-eqz v4, :cond_e

    nop

    nop

    iput-wide v2, p0, Ljxm;->K:J

    nop

    nop

    nop

    nop

    iget-object v4, p0, Ljxm;->d:Landroid/os/Handler;

    nop

    nop

    nop

    new-instance v6, Ljsp;

    nop

    nop

    nop

    nop

    invoke-direct {v6, p0, v5}, Ljsp;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    invoke-virtual {p0, v2, v3}, Ljxm;->a(J)Ljwp;

    move-result-object v2

    nop

    iget-object v3, v2, Ljwp;->c:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Lsuu;->e(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Luoj;->m()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_f

    nop

    nop

    iget-object v6, v2, Ljwp;->b:Lsuu;

    nop

    nop

    nop

    invoke-virtual {v6}, Lsuu;->isDone()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-nez v6, :cond_f

    nop

    nop

    nop

    move v6, v3

    nop

    nop

    nop

    goto :goto_35

    nop

    :cond_f
    move v6, v4

    nop

    nop

    nop

    :goto_35
    iget-object v7, v2, Ljwp;->c:Lsuu;

    nop

    nop

    invoke-virtual {v7}, Lsuu;->isDone()Z

    move-result v7

    nop

    if-eqz v7, :cond_7

    nop

    nop

    nop

    if-nez v6, :cond_7

    nop

    nop

    iget-object v6, v2, Ljwp;->c:Lsuu;

    nop

    nop

    invoke-virtual {v6}, Lsuu;->isCancelled()Z

    move-result v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_10

    nop

    nop

    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_10
    if-eqz v0, :cond_11

    nop

    iget-object v6, v2, Ljwp;->b:Lsuu;

    nop

    nop

    nop

    invoke-virtual {v6}, Lsuu;->isCancelled()Z

    move-result v6

    nop

    if-nez v6, :cond_11

    nop

    nop

    nop

    move v6, v3

    nop

    goto :goto_36

    nop

    :cond_11
    move v6, v4

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {v1}, Lprw;->d()J

    move-result-wide v7

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v9, v2, Ljwp;->c:Lsuu;

    nop

    nop

    nop

    nop

    invoke-static {v9}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    check-cast v9, Luoj;

    nop

    nop

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    iget-wide v11, v2, Ljwp;->a:J

    nop

    nop

    nop

    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    invoke-virtual {v10, v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    iget v10, v9, Luoj;->a:I

    nop

    nop

    nop

    nop

    and-int/2addr v10, v3

    nop

    if-eqz v10, :cond_20

    nop

    invoke-static {}, Lkav;->b()V

    if-nez v6, :cond_12

    nop

    iget-object v6, p0, Ljxm;->w:Lrss;

    nop

    invoke-virtual {v6}, Lrss;->h()Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_17

    nop

    iget-object v6, p0, Ljxm;->x:Lqhi;

    nop

    nop

    nop

    invoke-static {v6}, Lryb;->l(Ljava/lang/Object;)Lryb;

    move-result-object v6

    nop

    nop

    goto :goto_37

    nop

    nop

    nop

    nop

    :cond_12
    iget-object v6, v2, Ljwp;->b:Lsuu;

    nop

    nop

    nop

    invoke-static {v6}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Ljava/util/List;

    nop

    nop

    :goto_37
    iput-object v6, p0, Ljxm;->L:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, p0, Ljxm;->w:Lrss;

    nop

    nop

    invoke-virtual {v7}, Lrss;->h()Z

    move-result v7

    nop

    if-eqz v7, :cond_14

    nop

    nop

    nop

    new-instance v7, Ljava/util/ArrayList;

    nop

    nop

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    nop

    nop

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v8, p0, Ljxm;->w:Lrss;

    nop

    nop

    nop

    invoke-virtual {v8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v8

    nop

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    nop

    :goto_38
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    nop

    if-eqz v10, :cond_13

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    check-cast v10, Lqhi;

    nop

    nop

    nop

    nop

    move-object v11, v8

    nop

    check-cast v11, Lqhi;

    nop

    nop

    nop

    invoke-virtual {v10, v11}, Lqhi;->e(Lqhi;)Lqhi;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    nop

    nop

    nop

    nop

    :cond_13
    move-object v6, v7

    nop

    nop

    :cond_14
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    nop

    iget-object v8, p0, Ljxm;->H:Liha;

    nop

    if-eqz v8, :cond_15

    nop

    nop

    nop

    nop

    nop

    iget v8, v8, Liha;->b:I

    nop

    nop

    if-eq v8, v7, :cond_16

    nop

    nop

    nop

    :cond_15
    new-instance v8, Liha;

    nop

    nop

    nop

    nop

    iget-object v10, p0, Ljxm;->o:Lqht;

    nop

    nop

    nop

    invoke-direct {v8, v10, v7}, Liha;-><init>(Lqht;I)V

    iput-object v8, p0, Ljxm;->H:Liha;

    nop

    nop

    nop

    nop

    iget-object v7, p0, Ljxm;->p:Lqjb;

    nop

    invoke-virtual {v7}, Lqjb;->close()V

    iget-object v7, p0, Ljxm;->H:Liha;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Liha;->a()Lqjb;

    move-result-object v7

    nop

    nop

    nop

    nop

    iput-object v7, p0, Ljxm;->p:Lqjb;

    nop

    nop

    nop

    nop

    nop

    :cond_16
    iget-object v7, p0, Ljxm;->q:Lqjy;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lqjy;->close()V

    iget-object v7, p0, Ljxm;->H:Liha;

    nop

    invoke-virtual {v7, v6}, Liha;->b(Ljava/util/List;)Lqjy;

    move-result-object v6

    nop

    nop

    nop

    nop

    iput-object v6, p0, Ljxm;->q:Lqjy;

    nop

    nop

    :cond_17
    iget-object v6, p0, Ljxm;->I:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-interface {v1}, Lprw;->d()J

    move-result-wide v6

    nop

    nop

    iget-object v8, p0, Ljxm;->t:Ljxy;

    nop

    nop

    nop

    if-eqz v8, :cond_1d

    nop

    nop

    nop

    nop

    const/4 v10, 0x2

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_19

    nop

    iget-object v3, p0, Ljxm;->L:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v8, Ljxy;->i:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-static {}, Lkav;->b()V

    iget-object v11, v8, Ljxy;->e:Lpck;

    nop

    nop

    nop

    invoke-static {v11, v6, v7, v10}, Ljxv;->d(Lpck;JI)Ljxv;

    move-result-object v11

    nop

    nop

    iget-object v12, v11, Ljxv;->a:Ljxw;

    nop

    iget-object v12, v12, Ljxw;->f:Lsuu;

    nop

    nop

    nop

    invoke-virtual {v12, v3}, Lsuu;->e(Ljava/lang/Object;)Z

    iget-object v3, v8, Ljxy;->o:Llcm;

    nop

    nop

    invoke-virtual {v3, v11}, Llcm;->d(Ljxv;)V

    iget-object v3, v8, Ljxy;->k:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v3, v8, Ljxy;->d:Libn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v6, v7}, Libn;->a(J)Llsc;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_18

    nop

    nop

    iget-object v6, v11, Ljxv;->a:Ljxw;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v6, Ljxw;->c:Lsuu;

    nop

    nop

    nop

    invoke-virtual {v6, v3}, Lsuu;->e(Ljava/lang/Object;)Z

    :cond_18
    iget-object v3, v8, Ljxy;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    new-instance v6, Ljxk;

    nop

    nop

    nop

    nop

    invoke-direct {v6, v8, v10}, Ljxk;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v3, p0, Ljxm;->D:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto/16 :goto_3a

    nop

    :cond_19
    iget-object v11, v8, Ljxy;->h:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-static {}, Lkav;->b()V

    invoke-virtual {v8, v4}, Ljxy;->b(Z)V

    iget-object v11, v8, Ljxy;->c:Liid;

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Liid;->c()Z

    move-result v11

    nop

    nop

    nop

    nop

    nop

    if-nez v11, :cond_1a

    nop

    nop

    nop

    nop

    goto :goto_39

    nop

    nop

    nop

    nop

    :cond_1a
    iget-object v11, v8, Ljxy;->l:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v11, v8, Ljxy;->e:Lpck;

    nop

    invoke-static {v11, v6, v7, v3}, Ljxv;->d(Lpck;JI)Ljxv;

    move-result-object v11

    nop

    nop

    nop

    iget-object v12, v8, Ljxy;->o:Llcm;

    nop

    invoke-virtual {v12, v11}, Llcm;->d(Ljxv;)V

    iget-object v12, v8, Ljxy;->g:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    nop

    cmp-long v12, v6, v12

    nop

    nop

    if-gez v12, :cond_1b

    nop

    nop

    nop

    nop

    iget-object v12, v11, Ljxv;->a:Ljxw;

    nop

    nop

    nop

    nop

    nop

    iput-boolean v3, v12, Ljxw;->g:Z

    nop

    nop

    :cond_1b
    iget-object v3, v8, Ljxy;->d:Libn;

    nop

    nop

    invoke-virtual {v3, v6, v7}, Libn;->a(J)Llsc;

    move-result-object v3

    nop

    if-eqz v3, :cond_1c

    nop

    nop

    nop

    iget-object v6, v11, Ljxv;->a:Ljxw;

    nop

    nop

    iget-object v6, v6, Ljxw;->c:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v3}, Lsuu;->e(Ljava/lang/Object;)Z

    :cond_1c
    iget-object v3, v8, Ljxy;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    new-instance v6, Ljxk;

    nop

    nop

    invoke-direct {v6, v8, v10}, Ljxk;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_39
    iget-object v3, p0, Ljxm;->E:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    :cond_1d
    :goto_3a
    iget-wide v2, v2, Ljwp;->a:J

    nop

    iput-wide v2, p0, Ljxm;->K:J

    nop

    if-nez v0, :cond_1f

    nop

    iget-object v0, p0, Ljxm;->w:Lrss;

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_1e

    nop

    nop

    nop

    nop

    goto :goto_3b

    nop

    nop

    nop

    nop

    :cond_1e
    iget-object v0, p0, Ljxm;->g:Ljww;

    nop

    nop

    nop

    invoke-interface {v0, v1}, Ljww;->f(Lprw;)V

    goto :goto_3c

    nop

    :cond_1f
    :goto_3b
    iget-object v0, p0, Ljxm;->g:Ljww;

    nop

    nop

    nop

    nop

    new-instance v2, Ljxj;

    nop

    nop

    invoke-direct {v2, p0, v4}, Ljxj;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1, v2}, Ljww;->g(Lprw;Ljwv;)V

    :goto_3c
    iget-object v0, p0, Ljxm;->A:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v0, p0, Ljxm;->d:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljsp;

    nop

    invoke-direct {v2, p0, v5}, Ljsp;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3d

    nop

    :cond_20
    iget-object v0, p0, Ljxm;->z:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v0, p0, Ljxm;->C:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :goto_3d
    invoke-virtual {v9}, Luoj;->l()Z

    move-result v0

    nop

    if-eqz v0, :cond_8

    nop

    invoke-direct {p0}, Ljxm;->d5484163cd8d335e6b17663474ff5f2bm()V
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const-wide/16 v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v0, p0, Ljxm;->N:Ljwk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_40
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_16

    nop

    :catchall_1
    move-exception v0

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

    :goto_42
    return-void

    nop

    nop

    :goto_43
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-nez v0, :cond_21

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized e(Lqep;Ljwk;)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iput-object p2, p0, Ljxm;->N:Ljwk;

    nop

    nop

    nop

    nop

    new-instance v0, Ljxl;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0, p2, v1}, Ljxl;-><init>(Ljxm;Ljwk;I)V

    iget-object p2, p0, Ljxm;->e:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ljxm;->o:Lqht;

    nop

    nop

    nop

    nop

    iget-object v2, p0, Ljxm;->g:Ljww;

    nop

    nop

    invoke-interface {v2, p1, v1, v0, p2}, Ljww;->c(Lqep;Lqht;Lqkz;Landroid/os/Handler;)V

    iget-object p1, p0, Ljxm;->c:Ljwx;

    nop

    nop

    nop

    nop

    nop

    const/4 p2, 0x1

    nop

    invoke-virtual {p1, p2}, Ljwx;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_4
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

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
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    throw p1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop
.end method

.method public final f()V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ljxm;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Ljxm;->A:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object v0, p0, Ljxm;->j:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    goto/32 :goto_8

    nop

    nop

    :goto_5
    iget-object v0, p0, Ljxm;->F:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_1

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Ljxm;->z:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Ljxm;->D:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_2

    nop

    nop

    :goto_d
    iget-object v0, p0, Ljxm;->G:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Ljxm;->E:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Ljxm;->i:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_5

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Ljxm;->k:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Ljxm;->C:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method
