.class public final synthetic Llli;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lllk;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lllk;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llli;->a:Lllk;

    iput-object p2, p0, Llli;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Llli;->a:Lllk;

    iget-object v1, p0, Llli;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lllk;->c(Landroid/view/View;)V

    return-void
.end method
