.class public final Lrqc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/ar/core/InstallActivity;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/google/ar/core/InstallActivity;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lrqc;->a:Lcom/google/ar/core/InstallActivity;

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

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lrqc;->b:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lcom/google/ar/core/InstallActivity;->-$$Nest$manimateToSpinner(Lcom/google/ar/core/InstallActivity;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lrqc;->a:Lcom/google/ar/core/InstallActivity;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Lcom/google/ar/core/InstallActivity;->-$$Nest$mstartInstaller(Lcom/google/ar/core/InstallActivity;)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    iget p1, p0, Lrqc;->b:I

    nop

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

    :goto_7
    iget-object p0, p0, Lrqc;->a:Lcom/google/ar/core/InstallActivity;

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

    :goto_8
    new-instance p1, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

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

    :goto_9
    invoke-static {p0, p1}, Lcom/google/ar/core/InstallActivity;->-$$Nest$mfinishWithFailure(Lcom/google/ar/core/InstallActivity;Ljava/lang/Exception;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1}, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lrqc;->a:Lcom/google/ar/core/InstallActivity;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method
