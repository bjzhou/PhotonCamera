.class public final synthetic Leoy;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final synthetic a:Lkad;

.field public final synthetic b:Lnph;


# direct methods
.method public synthetic constructor <init>(Lkad;Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leoy;->a:Lkad;

    iput-object p2, p0, Leoy;->b:Lnph;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, Leoy;->a:Lkad;

    iget-object v1, p0, Leoy;->b:Lnph;

    sget-object v2, Lepb;->a:Lnak;

    invoke-interface {v0}, Lkad;->close()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
