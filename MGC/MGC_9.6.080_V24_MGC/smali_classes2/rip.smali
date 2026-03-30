.class final Lrip;
.super Leki;
.source "PG"


# instance fields
.field final synthetic b:Lriq;


# direct methods
.method public constructor <init>(Lriq;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Lrip;->b:Lriq;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Leki;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrip;->b:Lriq;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lriq;->setVisibility(I)V

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iget-boolean p1, p0, Lriq;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iget p1, p0, Lriq;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop
.end method
