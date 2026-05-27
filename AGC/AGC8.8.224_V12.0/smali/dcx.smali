.class public final Ldcx;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lddd;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lddd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcx;->a:Lddd;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lmoz;->y(Ljava/lang/Object;)Lmqo;

    move-result-object v0

    iget-object v1, p0, Ldcx;->a:Lddd;

    const-string v2, "Reason"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Ldcx;->b:I

    const-string v2, "Impressions before reboot"

    invoke-virtual {v0, v2, v1}, Lmqo;->e(Ljava/lang/String;I)V

    iget v1, p0, Ldcx;->c:I

    const-string v2, "Impressions after reboot"

    invoke-virtual {v0, v2, v1}, Lmqo;->e(Ljava/lang/String;I)V

    iget v1, p0, Ldcx;->d:I

    const-string v2, "Reboot count"

    invoke-virtual {v0, v2, v1}, Lmqo;->e(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
