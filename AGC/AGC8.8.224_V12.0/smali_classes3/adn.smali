.class public final Ladn;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ladn;


# instance fields
.field public final b:Lado;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Locale;

    invoke-static {v0}, Ladn;->a([Ljava/util/Locale;)Ladn;

    move-result-object v0

    sput-object v0, Ladn;->a:Ladn;

    return-void
.end method

.method private constructor <init>(Lado;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ladn;->b:Lado;

    return-void
.end method

.method public static varargs a([Ljava/util/Locale;)Ladn;
    .locals 0

    invoke-static {p0}, Ladm;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    move-result-object p0

    invoke-static {p0}, Ladn;->b(Landroid/os/LocaleList;)Ladn;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/os/LocaleList;)Ladn;
    .locals 2

    new-instance v0, Ladn;

    new-instance v1, Lado;

    invoke-direct {v1, p0}, Lado;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ladn;-><init>(Lado;)V

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ladn;->b:Lado;

    iget-object v0, v0, Lado;->a:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ladn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ladn;->b:Lado;

    check-cast p1, Ladn;

    iget-object p1, p1, Ladn;->b:Lado;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Ladn;->b:Lado;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ladn;->b:Lado;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
