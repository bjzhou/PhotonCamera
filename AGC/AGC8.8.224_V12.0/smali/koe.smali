.class public final Lkoe;
.super Ljava/lang/Object;


# static fields
.field private static final g:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[A-Z][A-Z0-9]{3}\\.\\d{6}\\.\\d{3}(\\..*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lkoe;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkoe;->a:Z

    iput-boolean v0, p0, Lkoe;->b:Z

    iput-boolean v0, p0, Lkoe;->c:Z

    iput-boolean v0, p0, Lkoe;->d:Z

    iput-boolean v0, p0, Lkoe;->e:Z

    iput-boolean v0, p0, Lkoe;->f:Z

    const-string v0, "MASTER"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x21

    if-gt p1, v0, :cond_0

    sget-object p1, Lkoe;->g:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    :cond_0
    return-void
.end method

.method public static a()Lkoe;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    new-instance v2, Lkoe;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v1, :cond_0

    const-string v1, "AAA01"

    :cond_0
    invoke-direct {v2, v0, v1}, Lkoe;-><init>(ILjava/lang/String;)V

    return-object v2
.end method
