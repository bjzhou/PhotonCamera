.class final synthetic Lcom/CameraLensTogglesConsumer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Lcom/CameraLensTogglesOnClickListener;

.field private final arg$2:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/CameraLensTogglesOnClickListener;Landroid/view/View;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p1, p0, Lcom/CameraLensTogglesConsumer$1;->arg$1:Lcom/CameraLensTogglesOnClickListener;

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
    iput-object p2, p0, Lcom/CameraLensTogglesConsumer$1;->arg$2:Landroid/view/View;

    nop

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/CameraLensTogglesConsumer$1;->arg$2:Landroid/view/View;

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
    invoke-virtual {v0, p0, p1}, Lcom/CameraLensTogglesOnClickListener;->onClickToggle(Landroid/view/View;Landroid/widget/TextView;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/CameraLensTogglesConsumer$1;->arg$1:Lcom/CameraLensTogglesOnClickListener;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop
.end method
