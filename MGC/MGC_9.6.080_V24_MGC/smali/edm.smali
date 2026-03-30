.class public final Ledm;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/Object;

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

    :goto_1
    sput-object v0, Ledm;->a:Ljava/lang/Object;

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_1a

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    const-string p0, "\n"

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

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

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_7
    throw p0

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "\n  "

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

    :goto_b
    const v0, 0x12

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    sget-object v0, Ledm;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    :goto_12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_15
    const-string v0, "\n"

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_0
    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_2

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

    :cond_2
    :try_start_1
    instance-of v2, v1, Ljava/net/UnknownHostException;

    nop

    if-eqz v2, :cond_3

    nop

    const-string p1, "UnknownHostException (no network)"

    nop

    nop

    monitor-exit v0

    nop

    nop

    goto :goto_1a

    nop

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    nop

    goto :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    const-string v1, "\t"

    nop

    const-string v2, "    "

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v1, p1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    monitor-enter v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string p0, "\n  "

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_22
    const/4 p1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_24
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    :try_start_0
    invoke-static {p1, v1}, Ledm;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

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

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_2
    sget-object v0, Ledm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    monitor-enter v0

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

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    const v0, 0xa

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    throw p0

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method
