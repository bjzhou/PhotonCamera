.class public final synthetic Lcao;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcar;

.field public final synthetic b:Landroid/util/LongSparseArray;


# direct methods
.method public synthetic constructor <init>(Lcar;Landroid/util/LongSparseArray;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lcao;->b:Landroid/util/LongSparseArray;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcao;->a:Lcar;

    nop

    nop

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

    nop
.end method


# virtual methods
.method public final run()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Lcap;->a(Lcar;Landroid/util/LongSparseArray;)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcao;->b:Landroid/util/LongSparseArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcao;->a:Lcar;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method
