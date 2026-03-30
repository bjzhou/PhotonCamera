.class public final Lfqk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjr;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lfqk;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

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
    iput-object p1, p0, Lfqk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput p3, p0, Lfqk;->a:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;IILfjp;)Lflx;
    .locals 10

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lfqx;->f()Landroid/graphics/drawable/Drawable;

    move-result-object p1

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

    :goto_1
    goto/32 :goto_3b

    nop

    nop

    :goto_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v9, Lfqj;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter v2

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v3, Lftm;->a:Ljava/util/Queue;

    nop

    nop

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lftm;

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v2, v3}, Lftt;-><init>(Ljava/io/InputStream;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    nop

    :goto_9
    const v1, 0x7

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Lfqi;->b()V

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lfqk;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p1, Lfqx;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Lfqi;->b()V

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    throw p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_1
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v3, :cond_3

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

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_16
    new-instance v2, Lfqi;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move v0, p1

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_18
    return-object p0

    nop

    :goto_19
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v2, p1, v0}, Lfqi;-><init>(Ljava/io/InputStream;Lfmm;)V

    goto/32 :goto_a

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p1, p4}, Lfqz;->c(Landroid/net/Uri;Lfjp;)Lflx;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p1, Ljava/io/InputStream;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1e
    sget-object v2, Lftm;->a:Ljava/util/Queue;

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

    :goto_1f
    check-cast p1, Lfqi;

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

    :goto_20
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_21
    check-cast v0, Lfqz;

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

    nop

    :goto_22
    new-instance v3, Lftm;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_23
    iget v0, p0, Lfqk;->a:I

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

    :goto_24
    move-object p1, v2

    nop

    :goto_25
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Lfqk;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_28
    const v0, 0xf

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-object p0

    nop

    nop

    :goto_2a
    goto/32 :goto_1d

    nop

    nop

    :goto_2b
    new-instance v2, Lftt;

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

    :goto_2c
    invoke-static {p0, p1, p2, p3}, Lfpz;->a(Lfmf;Landroid/graphics/drawable/Drawable;II)Lflx;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2d
    check-cast p1, Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lfqk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_30
    check-cast v0, Lfmm;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_31
    instance-of v0, p1, Lfqi;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_32
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2e

    nop

    nop

    :goto_34
    invoke-virtual {v3}, Lftm;->a()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {v3}, Lftm;-><init>()V

    :goto_36
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1

    nop

    :goto_38
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    throw p0

    nop

    :goto_3b
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-direct {v9, p1, v3}, Lfqj;-><init>(Lfqi;Lftm;)V

    :try_start_2
    iget-object p0, p0, Lfqk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    new-instance v5, Lfqe;

    nop

    nop

    nop

    move-object v4, p0

    nop

    nop

    nop

    nop

    check-cast v4, Lfpx;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lfpx;->f:Ljava/util/List;

    nop

    nop

    nop

    move-object v6, p0

    nop

    check-cast v6, Lfpx;

    nop

    nop

    nop

    nop

    iget-object v6, v6, Lfpx;->g:Lfmm;

    nop

    nop

    nop

    invoke-direct {v5, v2, v4, v6, v1}, Lfqe;-><init>(Ljava/io/InputStream;Ljava/util/List;Lfmm;I)V

    move-object v4, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lfpx;

    nop

    nop

    nop

    move v6, p2

    nop

    nop

    nop

    move v7, p3

    nop

    move-object v8, p4

    nop

    nop

    nop

    invoke-virtual/range {v4 .. v9}, Lfpx;->a(Lfqf;IILfjp;Lfpw;)Lflx;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iput-object p1, v3, Lftm;->b:Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3e
    invoke-virtual {v3}, Lftm;->a()V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3f
    if-nez v0, :cond_6

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic b(Ljava/lang/Object;Lfjp;)Z
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    check-cast p1, Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "android.resource"

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Ljava/io/InputStream;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget p0, p0, Lfqk;->a:I

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

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

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
.end method
