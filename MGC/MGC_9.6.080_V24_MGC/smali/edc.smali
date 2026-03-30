.class public final Ledc;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;

.field private static g:Ledc;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/ArrayList;

.field public final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Ledc;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Ledc;->d:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object v0, p0, Ledc;->e:Landroid/os/Handler;

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

    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-direct {v0, p0, p1}, Leda;-><init>(Ledc;Landroid/os/Looper;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

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

    :goto_7
    iput-object p1, p0, Ledc;->a:Landroid/content/Context;

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

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Ledc;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Ledc;->c:Ljava/util/HashMap;

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

    :goto_b
    new-instance v0, Leda;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/content/Context;)Ledc;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_1
    sget-object v0, Ledc;->f:Ljava/lang/Object;

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

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    sget-object v1, Ledc;->g:Ledc;

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    new-instance v1, Ledc;

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0}, Ledc;-><init>(Landroid/content/Context;)V

    sput-object v1, Ledc;->g:Ledc;

    nop

    nop

    :cond_1
    sget-object p0, Ledc;->g:Ledc;

    nop

    monitor-exit v0

    nop

    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    const v0, 0xe

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 6

    goto/32 :goto_a

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    new-instance v1, Ledb;

    nop

    nop

    invoke-direct {v1, p2, p1}, Ledb;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Ledc;->b:Ljava/util/HashMap;

    nop

    nop

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    if-nez v2, :cond_0

    nop

    nop

    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, p0, Ledc;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    nop

    nop

    :goto_1
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    nop

    nop

    nop

    nop

    if-ge p1, v2, :cond_2

    nop

    nop

    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    iget-object v4, p0, Ledc;->c:Ljava/util/HashMap;

    nop

    nop

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Ljava/util/ArrayList;

    nop

    nop

    if-nez v4, :cond_1

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/util/ArrayList;

    nop

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, p0, Ledc;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    goto :goto_1

    nop

    nop

    :cond_2
    monitor-exit v0

    nop

    nop

    nop

    return-void

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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget-object v0, p0, Ledc;->b:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    nop

    :goto_9
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_b

    nop

    :goto_a
    const v0, 0x18

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

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop
.end method

.method public final c(Landroid/content/BroadcastReceiver;)V
    .locals 11

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Ledc;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Ledc;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    monitor-exit v0

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    nop

    nop

    :cond_1
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    if-ltz v2, :cond_5

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Ledb;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    iput-boolean v4, v3, Ledb;->d:Z

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    :goto_6
    iget-object v6, v3, Ledb;->a:Landroid/content/IntentFilter;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    move-result v6

    nop

    nop

    nop

    nop

    if-ge v5, v6, :cond_1

    nop

    nop

    nop

    iget-object v6, v3, Ledb;->a:Landroid/content/IntentFilter;

    nop

    nop

    nop

    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v6

    nop

    iget-object v7, p0, Ledc;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    check-cast v7, Ljava/util/ArrayList;

    nop

    nop

    if-eqz v7, :cond_4

    nop

    nop

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v8, v8, -0x1

    nop

    nop

    if-ltz v8, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    check-cast v9, Ledb;

    nop

    nop

    nop

    nop

    iget-object v10, v9, Ledb;->b:Landroid/content/BroadcastReceiver;

    nop

    nop

    if-ne v10, p1, :cond_2

    nop

    nop

    nop

    iput-boolean v4, v9, Ledb;->d:Z

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    goto :goto_7

    nop

    nop

    nop

    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    nop

    nop

    nop

    if-gtz v7, :cond_4

    nop

    iget-object v7, p0, Ledc;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :cond_5
    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

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

    nop

    :goto_b
    if-lez v0, :cond_6

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_9

    nop

    :goto_c
    const v0, 0x1e

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method
