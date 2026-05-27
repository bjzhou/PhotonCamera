.class public final Lajg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public a:Z

.field private final b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lajg;->b:Landroid/widget/EditText;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lajg;->a:Z

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lajg;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lajg;->a:Z

    if-eqz p1, :cond_0

    sget-object p1, Laix;->a:Laix;

    :cond_0
    return-void
.end method
