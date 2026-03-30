.class public final Lrar;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqzo;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lqvg;Ljava/util/concurrent/Executor;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lrar;->c:Ljava/lang/Object;

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

    :goto_1
    iput-object p2, p0, Lrar;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Lrar;->a:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>(Ltlx;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    sget-object p2, Ltjv;->a:Ltjv;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lrar;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    sget-object p2, Ltlz;->a:Ltlz;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    sget-object p2, Ltjv;->a:Ltjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput p2, p0, Lrar;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lrar;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public static b(Ltlq;)Lrar;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const v1, 0x15

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

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    const v0, 0x14

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lrar;

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

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, v1}, Lrar;-><init>(Ltlx;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_9
    invoke-interface {p0}, Ltlq;->w()Ltlx;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Lrnb;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_21

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

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

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_7
    new-instance v0, Lras;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, p1, v0, p0}, Lram;-><init>(Lrnb;Lqvg;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_12

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    nop

    :goto_a
    check-cast v0, Lhdn;

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

    :goto_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Lhdn;->J(Landroid/net/Uri;)Z

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    new-instance p1, Lraa;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_12
    return-object v1

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_c

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

    nop

    :goto_15
    iget-object p0, p1, Lrnb;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    check-cast v0, Lqvg;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    invoke-direct {p1, p0}, Lraa;-><init>(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, p1, Lrnb;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1a
    new-instance p0, Ljava/io/IOException;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1b
    const v1, 0x7

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1c
    iget-object v0, p1, Lrnb;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1d
    iget v0, p0, Lrar;->a:I

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1e
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_3
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_1f
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_4
    goto/32 :goto_27

    nop

    :goto_20
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_22
    throw p1

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lrar;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_25
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_29
    const-string v0, "Requested file download is already a directory."

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0, p1}, Lras;->b(Lrnb;)Ljava/io/InputStream;

    move-result-object p1

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lrar;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lrar;->c:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast p0, Ltjv;

    nop

    nop

    nop

    invoke-interface {v0, p1, p0}, Ltlx;->c(Ljava/io/InputStream;Ltjv;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1}, Lrnb;->b()Z

    move-result v0

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

    :goto_2c
    check-cast v1, Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v0, "Transforms are not supported by this Opener: "

    nop

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

    :goto_30
    invoke-direct {v0}, Lras;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_31
    new-instance v1, Lram;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_32
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    :goto_35
    iget-object p0, p0, Lrar;->b:Ljava/lang/Object;

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
.end method
