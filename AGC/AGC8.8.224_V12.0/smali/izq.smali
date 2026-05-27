.class public final Lizq;
.super Ljava/lang/Object;


# static fields
.field public static final A:Ligo;

.field public static final B:Ligo;

.field public static final C:Ligo;

.field public static final a:Ligo;

.field public static final b:Ligo;

.field public static final c:Ligo;

.field public static final d:Ligo;

.field public static final e:Ligo;

.field public static final f:Ligo;

.field public static final g:Ligo;

.field public static final h:Ligo;

.field public static final i:Ligo;

.field public static final j:Ligo;

.field public static final k:Ligo;

.field public static final l:Ligo;

.field public static final m:Ligo;

.field public static final n:Ligo;

.field public static final o:Ligo;

.field public static final p:Ligo;

.field public static final q:Ligo;

.field public static final r:Ligo;

.field public static final s:Ligo;

.field public static final t:Ligo;

.field public static final u:Ligo;

.field public static final v:Ligo;

.field public static final w:Ligo;

.field public static final x:Ligo;

.field public static final y:Ligo;

.field public static final z:Ligo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v0

    sput-object v0, Lizq;->a:Ligo;

    const-string v0, "GAv4"

    invoke-static {v0}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v0

    sput-object v0, Lizq;->b:Ligo;

    const-wide/32 v0, 0x1b7740

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v1

    sput-object v1, Lizq;->c:Ligo;

    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v2

    sput-object v2, Lizq;->d:Ligo;

    const-wide/32 v2, 0x6ddd00

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v2

    sput-object v2, Lizq;->e:Ligo;

    const-wide/32 v2, 0x1ee6280

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v2

    sput-object v2, Lizq;->f:Ligo;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v3

    sput-object v3, Lizq;->g:Ligo;

    invoke-static {v2}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v2

    sput-object v2, Lizq;->h:Ligo;

    const-string v2, "http://www.google-analytics.com"

    invoke-static {v2}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v2

    sput-object v2, Lizq;->i:Ligo;

    const-string v2, "https://ssl.google-analytics.com"

    invoke-static {v2}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v2

    sput-object v2, Lizq;->j:Ligo;

    const-string v2, "/collect"

    invoke-static {v2}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v2

    sput-object v2, Lizq;->k:Ligo;

    const-string v2, "/batch"

    invoke-static {v2}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v2

    sput-object v2, Lizq;->l:Ligo;

    const/16 v2, 0x7f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v2

    sput-object v2, Lizq;->m:Ligo;

    const-string v2, "BATCH_BY_COUNT"

    invoke-static {v2}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v2

    sput-object v2, Lizq;->n:Ligo;

    const-string v2, "GZIP"

    invoke-static {v2}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v2

    sput-object v2, Lizq;->o:Ligo;

    const/16 v2, 0x2000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v3

    sput-object v3, Lizq;->p:Ligo;

    invoke-static {v2}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v3

    sput-object v3, Lizq;->q:Ligo;

    invoke-static {v2}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v2

    sput-object v2, Lizq;->r:Ligo;

    const-string v2, "404,502"

    invoke-static {v2}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v2

    sput-object v2, Lizq;->s:Ligo;

    const/16 v2, 0xe10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v2

    sput-object v2, Lizq;->t:Ligo;

    const v2, 0xea60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v2

    sput-object v2, Lizq;->u:Ligo;

    const v2, 0xee48

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v2

    sput-object v2, Lizq;->v:Ligo;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v3

    sput-object v3, Lizq;->w:Ligo;

    const-wide/16 v3, 0x2710

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v3

    sput-object v3, Lizq;->x:Ligo;

    invoke-static {v1}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v3

    sput-object v3, Lizq;->y:Ligo;

    invoke-static {v0}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v0

    sput-object v0, Lizq;->z:Ligo;

    const-wide/32 v3, 0x5265c00

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v0

    sput-object v0, Lizq;->A:Ligo;

    invoke-static {v1}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v0

    sput-object v0, Lizq;->B:Ligo;

    invoke-static {v2}, Ligo;->F(Ljava/lang/Object;)Ligo;

    move-result-object v0

    sput-object v0, Lizq;->C:Ligo;

    return-void
.end method
