.class public final synthetic Ldtx;
.super Ljava/lang/Object;

# interfaces
.implements Ldtt;


# instance fields
.field public final synthetic a:Lgul;

.field public final synthetic b:Lduv;


# direct methods
.method public synthetic constructor <init>(Lduv;Lgul;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldtx;->b:Lduv;

    iput-object p2, p0, Ldtx;->a:Lgul;

    return-void
.end method


# virtual methods
.method public final a(JLkou;)V
    .locals 2

    iget-object v0, p0, Ldtx;->b:Lduv;

    iget-object v1, p0, Ldtx;->a:Lgul;

    invoke-interface {v1, p3}, Lgul;->a(Lkou;)F

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lduv;->g(JF)V

    return-void
.end method
