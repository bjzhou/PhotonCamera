.class public final synthetic Lfe;
.super Ljava/lang/Object;

# interfaces
.implements Laen;


# instance fields
.field public final synthetic a:Lff;


# direct methods
.method public synthetic constructor <init>(Lff;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfe;->a:Lff;

    return-void
.end method


# virtual methods
.method public final g(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lfe;->a:Lff;

    invoke-virtual {v0, p1}, Lff;->c(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
