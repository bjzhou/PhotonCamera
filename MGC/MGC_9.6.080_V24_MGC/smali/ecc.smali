.class public final Lecc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ldvy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    sput-object v0, Lecc;->a:Ldvy;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ldvy;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ldvy;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final a(Lecb;)Lufs;
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    if-eqz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    :try_start_0
    sget-object v1, Luge;->a:Lufp;

    nop

    nop

    nop

    sget-object v1, Lunp;->a:Luhj;

    nop

    nop

    invoke-virtual {v1}, Luhj;->i()Luhj;

    move-result-object v1

    nop
    :try_end_0
    .catch Ltxu; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    return-object v1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit v0

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

    :goto_7
    throw p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
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

    :goto_a
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    monitor-exit v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_d

    nop

    nop

    :catch_0
    :try_start_1
    sget-object v1, Luae;->a:Luae;

    nop

    nop

    :goto_d
    new-instance v2, Leco;

    nop

    nop

    nop

    new-instance v3, Luhs;

    nop

    invoke-direct {v3}, Luhs;-><init>()V

    invoke-interface {v1, v3}, Luad;->plus(Luad;)Luad;

    move-result-object v1

    nop

    invoke-direct {v2, v1}, Leco;-><init>(Luad;)V

    const-string v1, "androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY"

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1, v2}, Lecb;->h(Ljava/lang/String;Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

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

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lecc;->a:Ldvy;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    move-object v1, v2

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    monitor-enter v0

    nop

    nop

    :try_start_2
    const-string v1, "androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY"

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Lecb;->g(Ljava/lang/String;)Ljava/lang/AutoCloseable;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Leco;

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_4

    nop

    nop
.end method
