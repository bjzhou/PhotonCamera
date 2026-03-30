.class Lirv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Liox;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Loxv;

.field public final c:Lsys;

.field public final d:Lpdf;

.field public final e:Ljava/lang/Object;

.field public final f:Landroid/content/Context;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public h:Z

.field public final i:Llks;

.field public final j:Lhoh;

.field private final k:Lrss;

.field private final l:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lirv;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const-string v0, "irv"

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

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Llks;Ljava/util/concurrent/Executor;Loxv;Lpdf;Lrss;Lhoh;Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lirv;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lirv;->c:Lsys;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    iput-object p5, p0, Lirv;->k:Lrss;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Lsys;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_8

    nop

    nop

    :goto_8
    iput-object p1, p0, Lirv;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    iput-object p1, p0, Lirv;->i:Llks;

    nop

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

    nop

    :goto_a
    iput-boolean p2, p0, Lirv;->h:Z

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1}, Lsys;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p2, p0, Lirv;->l:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p6, p0, Lirv;->j:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    iput-object p4, p0, Lirv;->d:Lpdf;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    :goto_12
    iput-object p7, p0, Lirv;->f:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p3, p0, Lirv;->b:Loxv;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-object p0, p0, Lirv;->l:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lirs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Lirs;-><init>(Lirv;)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final b(JLkog;Liow;Liow;Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;Lpck;)Lsui;
    .locals 12

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_0
    invoke-direct {v9}, Lsuu;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v1, 0x734

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2
    const/16 v1, 0x8

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, v8, Liow;->a:Lj$/util/Optional;

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

    :goto_4
    invoke-direct {v0, v1}, Liol;-><init>(I)V

    goto/32 :goto_66

    nop

    nop

    :goto_5
    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v1, Liqe;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    invoke-static {v0}, Lnar;->n(Ljava/lang/Object;)Lnar;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    :goto_f
    goto/32 :goto_64

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_11
    move-object/from16 v6, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_13
    move-object v5, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v5, v6, Liow;->d:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1, v2}, Liqe;-><init>(I)V

    goto/32 :goto_3e

    nop

    nop

    :goto_16
    sget-object v1, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_17
    check-cast v0, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_18
    invoke-static {v1, v2, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->GrayImageS16_empty(JLcom/google/googlex/gcam/GrayImageS16;)Z

    move-result v0

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_19
    iget-object v0, v8, Liow;->c:Lj$/util/Optional;

    nop

    nop

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

    :goto_1a
    move-object/from16 v2, p6

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 v1, 0x733

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

    :goto_1c
    return-object v9

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v0, Lscz;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_22
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_23
    iget-object v0, v8, Liow;->b:Lj$/util/Optional;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, v8, Liow;->b:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v1, "Primary image unavailable."

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v11, Liru;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_27
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_2
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move-object/from16 v8, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_2a
    invoke-static {v0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2b
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_2c
    move-object v0, v11

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2d
    move-object v1, p0

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_2e
    invoke-direct {v1, v2}, Liqe;-><init>(I)V

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_2f
    move-object/from16 v8, p5

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_31
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v2, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

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

    :goto_36
    iget-wide v1, v0, Lcom/google/googlex/gcam/GrayImageS16;->a:J

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v0, v8, Liow;->b:Lj$/util/Optional;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_38
    move-wide v3, p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const-string v1, "Missing secondary image, effect not applied."

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast v0, Lscz;

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

    nop

    :goto_3b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU8;->i()Z

    move-result v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3d
    const/4 v2, 0x5

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast v0, Lcom/google/googlex/gcam/GrayImageS16;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v10, v1, Lirv;->l:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    new-instance v1, Liqe;

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

    :goto_42
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_3
    :goto_43
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_44
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_45
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_5
    goto/32 :goto_5b

    nop

    :goto_46
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v5}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_49
    new-instance v1, Liqe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_30

    nop

    nop

    :goto_4b
    iget-object v0, v8, Liow;->c:Lj$/util/Optional;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_4c
    new-instance v9, Lsuu;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4d
    const/4 v6, 0x2

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v2, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4f
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_6
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    sget-object v0, Lirv;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_52
    check-cast v0, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_53
    invoke-interface/range {v1 .. v6}, Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;->e(JLnar;Lcom/google/googlex/gcam/ShotMetadata;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_55
    new-instance v0, Liol;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_1d

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    move-object/from16 v1, p6

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_5a
    check-cast v5, Lrss;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_32

    nop

    nop

    :goto_5c
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const-string v1, "Missing primary image, releasing secondary images."

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_5e
    goto/32 :goto_5c

    nop

    nop

    :goto_5f
    invoke-virtual {v1, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_60
    const v1, 0x3

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_61
    iget-object v0, v8, Liow;->c:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_62
    move-object/from16 v6, p4

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_63
    add-int v0, v0, v1

    nop

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

    :goto_64
    sget-object v0, Lirv;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v1, v6, Liow;->b:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU8;->i()Z

    move-result v0

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    move-wide v2, p1

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    move-object v7, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-direct/range {v0 .. v8}, Liru;-><init>(Lirv;Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;JLrss;Liow;Lsuu;Liow;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_6c
    invoke-direct {v1, v2}, Liqe;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop
.end method

.method public final c(Lidi;Llxa;)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final d(I)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, v0, p1}, Lscz;->t(Ljava/lang/String;I)V

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    sget-object p0, Lirv;->a:Lsdb;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x3

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

    :goto_8
    const/16 v0, 0x731

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "Unexpected fusion type for Fusion Zoom : %d"

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
.end method

.method public final e(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    const/16 p0, 0xd2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const/16 p0, 0xcc

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5
    const/16 p0, 0xcd

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_13

    nop

    nop

    :goto_7
    const/16 p0, 0xca

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    const/16 p0, 0xd0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    :pswitch_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_16

    nop

    nop

    :goto_d
    const/16 p0, 0xce

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    :pswitch_6
    goto/32 :goto_15

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    :pswitch_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    const/16 p0, 0xcb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_11
    return p0

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    const/16 p0, 0xd3

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

    :goto_13
    const/16 p0, 0xd1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    return p0

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_7

    nop

    nop

    :goto_15
    const/16 p0, 0xc9

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    const/16 p0, 0xcf

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

    :goto_17
    return p0

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    return p0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_6
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_7
    .end packed-switch

    :goto_19
    return p0

    nop

    :pswitch_b
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string p0, ""

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lirv;->k:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    check-cast p0, Ljava/io/File;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final g(JJLcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;Lcom/google/googlex/gcam/ShotMetadata;Ljava/lang/String;)V
    .locals 6

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lirv;->d:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lirv;->d:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v4, Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, p3}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_2b

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

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_7
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    cmp-long v0, p3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_a
    move-object v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_b
    sget-object p0, Lirv;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_c
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1b

    nop

    nop

    :goto_f
    const/16 p3, 0x739

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    const-string v1, "retrieveImage"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lirv;->d:Lpdf;

    nop

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

    :goto_12
    move-object v5, p7

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    const/16 p3, 0x73a

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0, p3, p7, p1, p2}, Lscz;->D(Ljava/lang/String;Ljava/lang/Object;J)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_19
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p0, Lscz;

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

    :goto_1b
    iget-object v0, p0, Lirv;->c:Lsys;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1c
    if-eqz p4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p3}, Lrss;->h()Z

    move-result p4

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

    :goto_1e
    const-string p3, "Does not save debug image due to fallback %s for shot %s"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p0, p3, p7, p1, p2}, Lscz;->D(Ljava/lang/String;Ljava/lang/Object;J)V

    goto/32 :goto_34

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    :goto_21
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v3, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_23
    invoke-interface {p0, p3}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_24
    move-object v0, p5

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, p3, p4}, Lsys;->a(J)Lrss;

    move-result-object p3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_27
    const-wide/16 v0, -0x1

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

    :goto_28
    sget-object p3, Lcom/google/android/apps/camera/imax/cyclops/metadata/vUwG/ZKDLyMOUoobPIS;->jtdsOsOHi:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_29
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object p0, Lirv;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p3}, Lrss;->c()Ljava/lang/Object;

    move-result-object p3

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

    :goto_2d
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

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

    :goto_2f
    invoke-direct {v4, p6}, Lcom/google/googlex/gcam/ShotMetadata;-><init>(Lcom/google/googlex/gcam/ShotMetadata;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move-wide v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_32
    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;->a(JLcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p0, p0, Lirv;->d:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    :goto_35
    goto/32 :goto_2c

    nop

    nop
.end method
