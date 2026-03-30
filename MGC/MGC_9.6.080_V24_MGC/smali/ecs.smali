.class final Lecs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lebg;


# instance fields
.field public final a:Lecx;

.field public b:Z

.field public final c:Lqzg;


# direct methods
.method public constructor <init>(Lecx;Lqzg;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lecs;->a:Lecx;

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
    iput-object p2, p0, Lecs;->c:Lqzg;

    nop

    nop

    nop

    goto/32 :goto_2

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

    nop

    :goto_3
    iput-boolean v0, p0, Lecs;->b:Z

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

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

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
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_f

    nop

    nop

    :goto_0
    invoke-static {p1}, Lecx;->e(Ljava/lang/Object;)Ljava/lang/String;

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lecq;->b(I)Z

    move-result v0

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

    :goto_3
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    check-cast p1, Ljava/util/List;

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

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lqzg;->a:Landroid/widget/ArrayAdapter;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lecs;->a:Lecx;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lqzg;->a:Landroid/widget/ArrayAdapter;

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

    :goto_b
    iput-boolean v0, p0, Lecs;->b:Z

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

    nop

    :goto_c
    iget-object p0, p0, Lecs;->c:Lqzg;

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

    :goto_d
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lqzg;->a:Landroid/widget/ArrayAdapter;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x2

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

    :goto_10
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lbo;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lecs;->c:Lqzg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
