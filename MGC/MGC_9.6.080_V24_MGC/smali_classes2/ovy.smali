.class public final Lovy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lowf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lovy;->a:Lowf;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-static {}, Lowa;->a()Lowf;

    move-result-object v0

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
    sget-object v0, Lovz;->a:Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    goto/32 :goto_17

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

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    goto :goto_a

    nop

    :goto_6
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    nop

    nop

    nop

    nop

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter v0

    nop

    nop

    :try_start_1
    invoke-virtual {v0, p0}, Lowf;->a(Landroid/content/ContentResolver;)V

    iget-object v1, v0, Lowf;->e:Ljava/lang/Object;

    nop

    nop

    iget-object v2, v0, Lowf;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    invoke-static {v2, p1, v3}, Lowf;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Integer;

    nop

    monitor-exit v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    move p2, p0

    nop

    nop

    nop

    nop

    :catch_0
    :goto_a
    goto/32 :goto_d

    nop

    nop

    :goto_b
    sget-object v0, Lovy;->a:Lowf;

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

    :goto_c
    throw p0

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

    :try_start_2
    monitor-exit v0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-enter v0

    nop

    nop

    :try_start_3
    iget-object p0, v0, Lowf;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v0, v1, p0, p1, v2}, Lowf;->b(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    nop

    nop

    nop

    move p0, p2

    nop

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1c

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Lowf;->c(Landroid/content/ContentResolver;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_13
    goto/32 :goto_3

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    :goto_15
    if-nez v2, :cond_2

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, p0, p1}, Lowf;->d(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop
.end method
