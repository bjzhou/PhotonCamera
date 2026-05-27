.class public final synthetic Lafl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnUnhandledKeyEventListener;


# instance fields
.field public final synthetic a:Lafp;


# direct methods
.method public synthetic constructor <init>(Lafp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lafl;->a:Lafp;

    return-void
.end method


# virtual methods
.method public final onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Lafl;->a:Lafp;

    invoke-interface {p1}, Lafp;->a()Z

    move-result p1

    return p1
.end method
