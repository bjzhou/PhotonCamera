.class public Landroidx/activity/ComponentActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Lakt;


# instance fields
.field final synthetic a:Lpl;


# direct methods
.method public constructor <init>(Lpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Lpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lakv;Lakq;)V
    .locals 0

    sget-object p1, Lakq;->ON_DESTROY:Lakq;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Lpl;

    iget-object p1, p1, Lpl;->f:Lpt;

    const/4 p2, 0x0

    iput-object p2, p1, Lpt;->b:Landroid/content/Context;

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Lpl;

    invoke-virtual {p1}, Lpl;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Lpl;

    invoke-virtual {p1}, Lpl;->getViewModelStore$ar$class_merging$ar$class_merging()Lbkb;

    move-result-object p1

    invoke-virtual {p1}, Lbkb;->l()V

    :cond_0
    return-void
.end method
