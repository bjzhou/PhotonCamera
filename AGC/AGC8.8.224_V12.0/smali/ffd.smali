.class public final synthetic Lffd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lnph;

.field public final synthetic b:Lnou;


# direct methods
.method public synthetic constructor <init>(Lnph;Lnou;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffd;->a:Lnph;

    iput-object p2, p0, Lffd;->b:Lnou;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lffd;->a:Lnph;

    iget-object v1, p0, Lffd;->b:Lnou;

    sget-object v2, Lffp;->a:Lnak;

    invoke-virtual {v0, v1}, Lnph;->f(Lnou;)Z

    return-void
.end method
