.class public final Leho;
.super Lhdn;


# instance fields
.field public final a:Lflf;

.field private final d:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lflf;Ljew;Ljava/util/concurrent/ScheduledExecutorService;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Lhdn;-><init>()V

    iput-object p1, p0, Leho;->d:Landroid/content/res/Resources;

    iput-object p2, p0, Leho;->a:Lflf;

    return-void
.end method


# virtual methods
.method protected final c()Lhdm;
    .locals 4

    invoke-static {}, Lheb;->a()Lhea;

    move-result-object v0

    iget-object v1, p0, Leho;->d:Landroid/content/res/Resources;

    const v2, 0x7f140233

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lhea;->a:Ljava/lang/String;

    iget-object v1, p0, Leho;->d:Landroid/content/res/Resources;

    const v2, 0x7f0803a0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lhea;->b:Landroid/graphics/drawable/Drawable;

    new-instance v1, Leer;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Leer;-><init>(Leho;I)V

    iput-object v1, v0, Lhea;->c:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1b58

    invoke-virtual {v0, v1, v2}, Lhea;->e(J)V

    invoke-virtual {v0}, Lhea;->a()Lheb;

    move-result-object v0

    invoke-static {}, Lhdm;->a()Lkxz;

    move-result-object v1

    iput-object v0, v1, Lkxz;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lkxz;->f(I)V

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lkxz;->g(I)V

    sget-object v0, Lika;->d:Lika;

    invoke-virtual {v1, v0}, Lkxz;->e(Lika;)V

    invoke-virtual {v1}, Lkxz;->h()V

    invoke-virtual {v1}, Lkxz;->d()Lhdm;

    move-result-object v0

    return-object v0
.end method
