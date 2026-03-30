.class final Lrcb;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Lrcc;

.field final synthetic e:Landroid/view/View;

.field final synthetic f:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic g:J


# direct methods
.method public constructor <init>(Lrcc;Landroid/view/View;Landroid/content/BroadcastReceiver$PendingResult;JLtzy;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lrcb;->f:Landroid/content/BroadcastReceiver$PendingResult;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-wide p4, p0, Lrcb;->g:J

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p6}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput-object p1, p0, Lrcb;->d:Lrcc;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x2

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

    nop

    :goto_6
    iput-object p2, p0, Lrcb;->e:Landroid/view/View;

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


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lrcb;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p1, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    check-cast p2, Ltzy;

    nop

    nop

    nop

    goto/32 :goto_6

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
    check-cast p1, Lufs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    check-cast p0, Lrcb;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v3, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    :goto_1
    iget v1, p0, Lrcb;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v2, Lrcg;->b:Luif;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    iget-object p1, p0, Lrcb;->d:Lrcc;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_5
    invoke-direct {v3, p1, v1, v4, v5}, Lrz;-><init>(Lrcc;Landroid/content/BroadcastReceiver$PendingResult;Ltzy;I)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    :goto_7
    :try_start_0
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eq p0, v0, :cond_1

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

    :cond_1
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-ne v1, v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_4

    nop

    nop

    :goto_10
    iget-object v3, p0, Lrcb;->a:Ljava/lang/Object;

    nop

    :try_start_1
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_23

    nop

    nop

    :goto_11
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_12
    if-eq p0, v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_4
    :goto_13
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_16
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    :try_start_2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    nop

    nop

    nop

    nop

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v5, p0, Lrcb;->d:Lrcc;

    nop

    nop

    nop

    iget-object v6, p0, Lrcb;->e:Landroid/view/View;

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v5, v5, Lrcc;->b:Lrcg;

    nop

    nop

    nop

    iput-object p1, p0, Lrcb;->a:Ljava/lang/Object;

    nop

    nop

    iput-object v1, p0, Lrcb;->b:Ljava/lang/Object;

    nop

    nop

    iput v3, p0, Lrcb;->c:I

    nop

    sget-object v3, Lrcg;->b:Luif;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v6, v1, v3, p0}, Lrcg;->b(Landroid/view/View;Ljava/io/OutputStream;Luad;Ltzy;)Ljava/lang/Object;

    move-result-object v3

    nop

    sget-object v5, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    nop

    if-eq v3, v5, :cond_5

    nop

    nop

    sget-object v3, Ltyg;->a:Ltyg;

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    const v0, 0x6

    nop

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

    nop

    :goto_18
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v2, Lcom/google/android/apps/camera/legacy/lightcycle/panorama/RpD/WBNWZfrn;->bpQZIi:Ljava/lang/String;

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

    :goto_1b
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1c
    new-instance v3, Lrz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lrcb;->b:Ljava/lang/Object;

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

    nop

    :goto_1e
    iput-object v4, p0, Lrcb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_20
    iget-object v1, p0, Lrcb;->f:Landroid/content/BroadcastReceiver$PendingResult;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput v5, p0, Lrcb;->c:I

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto :goto_27

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v4, p0, Lrcb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v5, 0x3

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

    :goto_26
    move-object v3, p1

    nop

    :goto_27
    :try_start_4
    invoke-static {v1, v4}, Lrkm;->s(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    check-cast v3, Ljava/io/ByteArrayOutputStream;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    sget-object p1, Lrcg;->b:Luif;

    nop

    nop

    new-instance v1, Lrca;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, p0, Lrcb;->f:Landroid/content/BroadcastReceiver$PendingResult;

    nop

    nop

    iget-object v8, p0, Lrcb;->d:Lrcc;

    nop

    nop

    nop

    iget-wide v9, p0, Lrcb;->g:J

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    move-object v5, v1

    nop

    invoke-direct/range {v5 .. v11}, Lrca;-><init>(Landroid/content/BroadcastReceiver$PendingResult;Ljava/lang/String;Lrcc;JLtzy;)V

    iput-object v4, p0, Lrcb;->a:Ljava/lang/Object;

    nop

    iput-object v4, p0, Lrcb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iput v2, p0, Lrcb;->c:I

    nop

    nop

    nop

    invoke-static {p1, v1, p0}, Lucd;->s(Luad;Lubo;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_29
    sget-object v0, Luag;->a:Luag;

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

    :goto_2a
    return-object v0

    nop

    nop

    :goto_2b
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object v1, Lrcc;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v2, v3, p0}, Lucd;->s(Luad;Lubo;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_30
    goto :goto_36

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-ne v1, v2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_36
    :try_start_5
    throw p1

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v2

    nop

    nop

    :try_start_6
    invoke-static {v1, p1}, Lrkm;->s(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_37
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 7

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Lrcb;->e:Landroid/view/View;

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

    :goto_1
    move-object v0, p1

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    move-object v6, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lrcb;->d:Lrcc;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    return-object p1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    iget-object v3, p0, Lrcb;->f:Landroid/content/BroadcastReceiver$PendingResult;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    invoke-direct/range {v0 .. v6}, Lrcb;-><init>(Lrcc;Landroid/view/View;Landroid/content/BroadcastReceiver$PendingResult;JLtzy;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p1, Lrcb;

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

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    iget-wide v4, p0, Lrcb;->g:J

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
