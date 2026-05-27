.class final Lfim;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lkaf;

.field public final b:J

.field public final c:Lnph;

.field public final d:Lnph;

.field public final e:Lnph;

.field public final f:Lnph;

.field public volatile g:Z

.field public final h:I


# direct methods
.method public constructor <init>(Lkaf;JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lfim;->c:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lfim;->d:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lfim;->e:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lfim;->f:Lnph;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfim;->g:Z

    iput-object p1, p0, Lfim;->a:Lkaf;

    iput-wide p2, p0, Lfim;->b:J

    iput p4, p0, Lfim;->h:I

    return-void
.end method
