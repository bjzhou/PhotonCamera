.class public final Liql;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lfbz;

.field public final b:Lkaq;

.field public final c:Liqk;

.field public final d:Liqk;

.field public e:I

.field public f:J

.field public g:J

.field final h:Lnwn;


# direct methods
.method public constructor <init>(Lfbz;Lkaq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liql;->a:Lfbz;

    const-string p1, "WearSessionLogger"

    invoke-interface {p2, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Liql;->b:Lkaq;

    new-instance p2, Liqk;

    invoke-direct {p2, p1}, Liqk;-><init>(Lkaq;)V

    iput-object p2, p0, Liql;->c:Liqk;

    new-instance p2, Liqk;

    invoke-direct {p2, p1}, Liqk;-><init>(Lkaq;)V

    iput-object p2, p0, Liql;->d:Liqk;

    sget-object p1, Lnln;->g:Lnln;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    iput-object p1, p0, Liql;->h:Lnwn;

    return-void
.end method
