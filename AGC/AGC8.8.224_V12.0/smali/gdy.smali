.class public final synthetic Lgdy;
.super Ljava/lang/Object;

# interfaces
.implements Lgel;


# instance fields
.field public final synthetic a:Lgel;


# direct methods
.method public synthetic constructor <init>(Lgel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdy;->a:Lgel;

    return-void
.end method


# virtual methods
.method public final bU(Lgej;Lgec;I)V
    .locals 1

    iget-object p3, p0, Lgdy;->a:Lgel;

    sget-object v0, Lgdz;->a:Lgej;

    sget-object v0, Lgec;->r:Lgec;

    invoke-virtual {p2, v0}, Lgec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-interface {p3, p1, p2, v0}, Lgel;->bU(Lgej;Lgec;I)V

    return-void
.end method
