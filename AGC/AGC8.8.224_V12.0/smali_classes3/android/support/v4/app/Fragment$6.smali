.class public Landroid/support/v4/app/Fragment$6;
.super Ljava/lang/Object;

# interfaces
.implements Lakt;


# instance fields
.field final synthetic a:Lbw;


# direct methods
.method public constructor <init>(Lbw;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/Fragment$6;->a:Lbw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lakv;Lakq;)V
    .locals 0

    sget-object p1, Lakq;->ON_STOP:Lakq;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroid/support/v4/app/Fragment$6;->a:Lbw;

    iget-object p1, p1, Lbw;->N:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_0
    return-void
.end method
