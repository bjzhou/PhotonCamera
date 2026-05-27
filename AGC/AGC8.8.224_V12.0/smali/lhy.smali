.class final Llhy;
.super Ljava/lang/Object;


# instance fields
.field public final a:Loyl;

.field public final b:Ljava/lang/Long;

.field public final c:Ljava/lang/Long;

.field public final d:Ljava/lang/Long;

.field public final e:Ljava/lang/Long;

.field public final f:Loyb;

.field public final g:Ljava/lang/String;

.field public final h:Loym;


# direct methods
.method public constructor <init>(Loyl;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Loyb;Ljava/lang/String;Loym;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llhy;->a:Loyl;

    iput-object p2, p0, Llhy;->b:Ljava/lang/Long;

    iput-object p3, p0, Llhy;->c:Ljava/lang/Long;

    iput-object p4, p0, Llhy;->d:Ljava/lang/Long;

    iput-object p5, p0, Llhy;->e:Ljava/lang/Long;

    iput-object p6, p0, Llhy;->f:Loyb;

    iput-object p7, p0, Llhy;->g:Ljava/lang/String;

    iput-object p8, p0, Llhy;->h:Loym;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Llhy;->b:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Llhy;->c:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Llhy;->d:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Llhy;->e:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Llhy;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "StatsRecord:\n  elapsed: %d\n  current: %d\n  Primes version: %d\n  version name #: %d\n  customName: %s\n"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
