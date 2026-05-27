.class public final synthetic Lfkb;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lgxy;

.field public final synthetic c:Ldqx;


# direct methods
.method public synthetic constructor <init>(Ldqx;JLgxy;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfkb;->c:Ldqx;

    iput-wide p2, p0, Lfkb;->a:J

    iput-object p4, p0, Lfkb;->b:Lgxy;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    iget-object v0, p0, Lfkb;->c:Ldqx;

    iget-wide v1, p0, Lfkb;->a:J

    iget-object v3, p0, Lfkb;->b:Lgxy;

    iget-object v4, v0, Ldqx;->a:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lmoz;->p(Z)V

    iget-object v2, v0, Ldqx;->e:Ljava/lang/Object;

    check-cast v2, Lcvr;

    invoke-virtual {v2, v3}, Lcvr;->L(Lgxy;)Leec;

    iget-object v0, v0, Ldqx;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
