.class public final Lreo;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Lreo;

.field private static volatile l:Ltlx;


# instance fields
.field public b:I

.field public c:I

.field public d:Ljava/lang/Object;

.field public e:Z

.field public f:Ltkv;

.field public g:Ltkl;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field private m:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    new-instance v0, Lreo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    const-class v1, Lreo;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_a

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
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    const v0, 0x2

    nop

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

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Lreo;->a:Lreo;

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

    :goto_d
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    invoke-direct {v0}, Lreo;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-byte v0, p0, Lreo;->m:B

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
    sget-object v0, Ltma;->a:Ltma;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iput-object v0, p0, Lreo;->f:Ltkv;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Lreo;->c:I

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

    :goto_6
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Lreo;->h:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x3e19999a    # 0.15f

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

    :goto_9
    sget-object v0, Ltjz;->a:Ltjz;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lreo;->g:Ltkl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 12

    goto/32 :goto_a

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
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2
    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    :goto_4
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_5
    if-ne p1, v0, :cond_1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    :goto_6
    const/4 v0, 0x3

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

    :goto_7
    throw p0

    nop

    nop

    :goto_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_b
    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x4

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

    :goto_d
    iput-byte p1, p0, Lreo;->m:B

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v9, "i"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    sget-object v2, Lcom/google/android/apps/camera/imax/cyclops/metadata/vUwG/ZKDLyMOUoobPIS;->QeKZJIOGUIZA:Ljava/lang/String;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_10
    const-class v6, Lrel;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_12
    const-string v10, "j"

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string p0, "\u0004\u0008\u0001\u0001\u0002\u000b\u0008\u0000\u0002\u0001\u0002\u043c\u0000\u0003\u1007\u0000\u0004\u001b\u0005\u0013\u0006\u1001\u0003\u0007\u1001\u0004\u0008\u1001\u0005\u000b\u1001\u0006"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object p0, Lreo;->l:Ltlx;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0}, Lreo;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1a
    const-string v4, "e"

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, p1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1e
    const/4 v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    :goto_20
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_22
    if-ne p1, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    :goto_23
    if-ne p1, v0, :cond_4

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_4
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_24
    const-string v5, "f"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sget-object p1, Lreo;->a:Lreo;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x2

    nop

    goto/32 :goto_5

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

    :goto_28
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-string v8, "h"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2a
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez p1, :cond_5

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_42

    nop

    :goto_2d
    new-instance p0, Ltkb;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2e
    monitor-enter p1

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p0, Lreo;->l:Ltlx;

    nop

    nop

    if-nez p0, :cond_6

    nop

    new-instance p0, Ltkc;

    nop

    nop

    sget-object p2, Lreo;->a:Lreo;

    nop

    nop

    invoke-direct {p0, p2}, Ltkc;-><init>(Ltkg;)V

    sput-object p0, Lreo;->l:Ltlx;

    nop

    nop

    :cond_6
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_8

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

    monitor-exit p1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto :goto_35

    nop

    nop

    :goto_30
    goto/32 :goto_34

    nop

    nop

    :goto_31
    invoke-direct {v0, p2, p0, p1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_7

    nop

    goto/32 :goto_42

    nop

    :cond_7
    goto/32 :goto_41

    nop

    :goto_33
    const-string v0, "d"

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_34
    const/4 p1, 0x1

    nop

    nop

    :goto_35
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    return-object p0

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_16

    nop

    nop

    :goto_38
    const/4 v0, 0x6

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_39
    const-string v7, "g"

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3a
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_3b
    const-class p1, Lreo;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const-string v11, "k"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object p2, Lreo;->a:Lreo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3e
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_3f
    new-instance p0, Lreo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_40
    new-instance v0, Ltmb;

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

    nop

    :goto_41
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const-class v3, Lrep;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_44
    const-string v1, "c"

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

    :goto_45
    const v1, 0x8

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-byte p0, p0, Lreo;->m:B

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_47
    sget-object p0, Lreo;->a:Lreo;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-eqz p0, :cond_8

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_49
    if-ne p1, v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_9
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    invoke-static {v0}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lreo;->f:Ltkv;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lreo;->f:Ltkv;

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    const v0, 0x9

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Ltkv;->c()Z

    move-result v1

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

    :goto_f
    const v1, 0x7

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method
