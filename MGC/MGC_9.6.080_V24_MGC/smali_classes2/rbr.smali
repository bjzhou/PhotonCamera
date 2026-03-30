.class public final synthetic Lrbr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssx;


# instance fields
.field public final synthetic a:Lssx;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lssx;Ljava/util/concurrent/Executor;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lrbr;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lrbr;->b:Ljava/util/concurrent/Executor;

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lrbr;->a:Lssx;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput p4, p0, Lrbr;->d:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lsui;
    .locals 1

    goto/32 :goto_d

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lrbr;->b:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lrbr;->a:Lssx;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p0, Lrbs;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, p0, v0}, Lrbp;->d(Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lrbs;->e:Lrbp;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    iget-object p1, p1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    iget-object p1, p1, Lrbs;->e:Lrbp;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0, p1}, Lrbp;->d(Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    check-cast p1, Ljava/lang/Void;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Lrbr;->d:I

    nop

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

    :goto_e
    iget-object p0, p0, Lrbr;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lrbr;->a:Lssx;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    iget-object p1, p0, Lrbr;->b:Ljava/util/concurrent/Executor;

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

    :goto_11
    iget-object p1, p0, Lrbr;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p1, Lrbs;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method
