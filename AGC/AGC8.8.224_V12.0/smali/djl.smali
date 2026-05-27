.class public abstract Ldjl;
.super Ljava/lang/Object;

# interfaces
.implements Lchd;


# static fields
.field protected static final a:Lj$/time/format/DateTimeFormatter;

.field private static final g:Lnak;


# instance fields
.field public final b:Landroid/content/Context;

.field protected final c:Ldjm;

.field public d:Lche;

.field protected e:Lfeb;

.field protected f:Lkaf;

.field private final h:Lgyb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com/google/android/apps/camera/data/FilmstripItemBase"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldjl;->g:Lnak;

    sget-object v0, Lj$/time/format/FormatStyle;->MEDIUM:Lj$/time/format/FormatStyle;

    invoke-static {v0}, Lj$/time/format/DateTimeFormatter;->ofLocalizedDateTime(Lj$/time/format/FormatStyle;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/format/DateTimeFormatter;->withZone(Lj$/time/ZoneId;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ldjl;->a:Lj$/time/format/DateTimeFormatter;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ldjm;Lche;Lgyb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldjl;->b:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Ldjl;->c:Ldjm;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Ldjl;->d:Lche;

    iput-object p4, p0, Ldjl;->h:Lgyb;

    sget-object p1, Lfeb;->a:Lfeb;

    iput-object p1, p0, Ldjl;->e:Lfeb;

    iget-object p1, p2, Ldjm;->a:Lkaf;

    iput-object p1, p0, Ldjl;->f:Lkaf;

    return-void
.end method

.method public static k(Landroid/view/View;)Ldjk;
    .locals 1

    const v0, 0x7f0b0211

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ldjk;

    if-eqz v0, :cond_0

    check-cast p0, Ldjk;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static final n(Lche;)Lbqb;
    .locals 4

    invoke-interface {p0}, Lche;->i()Ljava/lang/String;

    invoke-interface {p0}, Lche;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lche;->h()Lj$/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v1

    new-instance v3, Lcag;

    invoke-interface {p0}, Lche;->a()I

    move-result p0

    invoke-direct {v3, v0, v1, v2, p0}, Lcag;-><init>(Ljava/lang/String;JI)V

    return-object v3
.end method


# virtual methods
.method public final b()Lche;
    .locals 1

    iget-object v0, p0, Ldjl;->d:Lche;

    return-object v0
.end method

.method public final d()Lfeb;
    .locals 1

    iget-object v0, p0, Ldjl;->e:Lfeb;

    return-object v0
.end method

.method public final e()Lgyb;
    .locals 1

    iget-object v0, p0, Ldjl;->h:Lgyb;

    return-object v0
.end method

.method public final f(Lche;)V
    .locals 0

    iput-object p1, p0, Ldjl;->d:Lche;

    return-void
.end method

.method public final g(Lfeb;)V
    .locals 0

    iput-object p1, p0, Ldjl;->e:Lfeb;

    return-void
.end method

.method public final h(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    new-instance v0, Lkaf;

    invoke-direct {v0, p1, p2}, Lkaf;-><init>(II)V

    iput-object v0, p0, Ldjl;->f:Lkaf;

    return-void

    :cond_0
    sget-object p1, Ldjl;->g:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "Suggested size was set to a zero area value!"

    const/16 v0, 0x3a3

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void
.end method

.method final j(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Ldjl;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0057

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b00e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0b0293

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0b028e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v3, Ldjk;

    invoke-direct {v3, v0, v1, v2}, Ldjk;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    const v0, 0x7f0b0211

    invoke-virtual {p1, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method

.method public final l(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Ldjl;->k(Landroid/view/View;)Ldjk;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Ldjl;->g:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "renderThumbnail was called with an invalid view!"

    const/16 v1, 0x3a2

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ldjl;->m(Ldjk;)V

    return-void
.end method

.method protected abstract m(Ldjk;)V
.end method
