.class public final synthetic Lcma;
.super Ljava/lang/Object;

# interfaces
.implements Lnno;


# instance fields
.field public final synthetic a:Lcmd;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcmd;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcma;->a:Lcmd;

    iput-wide p2, p0, Lcma;->b:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lnou;
    .locals 7

    iget-object v0, p0, Lcma;->a:Lcmd;

    iget-wide v2, p0, Lcma;->b:J

    check-cast p1, Lmqp;

    iget-object v1, v0, Lcmd;->d:Lcnt;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "on_shutter"

    invoke-static {v4, v0}, Lmwa;->n(Ljava/lang/Object;Ljava/lang/Object;)Lmwa;

    move-result-object v5

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, [B

    const-string v4, "pixel_data"

    invoke-interface/range {v1 .. v6}, Lcnt;->d(JLjava/lang/String;Ljava/util/Map;[B)Lnou;

    move-result-object p1

    return-object p1
.end method
