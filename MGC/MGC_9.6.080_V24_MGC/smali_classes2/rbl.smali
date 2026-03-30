.class public final Lrbl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/lang/String;

.field public final d:Lrtm;

.field public e:Landroid/content/SharedPreferences;

.field public final f:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public constructor <init>(Lrbj;)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lrbl;->d:Lrtm;

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

    :goto_1
    iget-object v0, p1, Lrbj;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lrbl;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lrbl;->a:Landroid/content/Context;

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

    nop

    :goto_5
    iget-object v0, p1, Lrbj;->c:Ljava/lang/String;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    iget-object p1, p1, Lrbj;->d:Lrtm;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lrbl;->f:Landroidx/wear/ambient/AmbientMode$AmbientController;

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

    :goto_8
    iput-object v0, p0, Lrbl;->c:Ljava/lang/String;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    iget-object v0, p1, Lrbj;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    iget-object v0, p1, Lrbj;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lrbj;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lrbj;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    :goto_2
    invoke-direct {v0, p0, p1}, Lrbj;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
