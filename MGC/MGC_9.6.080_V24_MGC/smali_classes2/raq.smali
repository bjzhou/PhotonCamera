.class public final Lraq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqzo;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

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
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lraq;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Lrnb;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lraq;->c(Lrnb;)Ljava/io/File;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lraq;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final c(Lrnb;)Ljava/io/File;
    .locals 1

    goto/32 :goto_14

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Lraa;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Lraa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_13

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, p1}, Lrax;->d(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    iget-object p0, p1, Lrnb;->d:Ljava/lang/Object;

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

    :goto_8
    new-instance p0, Lras;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Lqzz;->close()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p1, p0}, Lqzz;-><init>(Ljava/io/Closeable;)V

    :try_start_0
    iget-object p0, p1, Lqzz;->a:Ljava/io/Closeable;

    nop

    nop

    nop

    instance-of v0, p0, Lqzv;

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    check-cast p0, Lqzv;

    nop

    nop

    invoke-interface {p0}, Lqzv;->a()Ljava/io/File;

    move-result-object p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    :goto_c
    check-cast p1, Landroid/net/Uri;

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

    :goto_d
    new-instance p1, Lqzz;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    iget-object p1, p1, Lrnb;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Lrnb;->b()Z

    move-result p0

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

    :goto_11
    const-string p1, "Short circuit would skip transforms."

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    iget-boolean p0, p0, Lraq;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    nop

    const-string v0, "Not convertible and fallback to pipe is disabled."

    nop

    nop

    nop

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {p1}, Lqzz;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, p1}, Lras;->b(Lrnb;)Ljava/io/InputStream;

    move-result-object p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0}, Lras;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop
.end method
