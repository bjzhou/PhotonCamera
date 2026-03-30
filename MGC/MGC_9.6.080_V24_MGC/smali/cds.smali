.class public final Lcds;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lces;


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcds;->a:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcds;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    new-instance p1, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lcid;
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcds;->b:Ljava/lang/Object;

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

    :goto_2
    throw p0

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    return-object v1

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x13

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lcds;->a:Landroid/view/ViewGroup;

    nop

    invoke-virtual {p0}, Landroid/view/View;->getUniqueDrawingId()J

    new-instance p0, Lcig;

    nop

    nop

    new-instance v1, Lcej;

    nop

    invoke-direct {v1}, Lcej;-><init>()V

    new-instance v2, Lchp;

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Lchp;-><init>()V

    invoke-direct {p0, v1, v2}, Lcig;-><init>(Lcej;Lchp;)V

    new-instance v1, Lcid;

    nop

    invoke-direct {v1, p0}, Lcid;-><init>(Lcie;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b(Lcid;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    monitor-exit p0

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

    nop

    :goto_2
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-boolean v0, p1, Lcid;->l:Z

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    iput-boolean v0, p1, Lcid;->l:Z

    nop

    invoke-virtual {p1}, Lcid;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcds;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop
.end method
