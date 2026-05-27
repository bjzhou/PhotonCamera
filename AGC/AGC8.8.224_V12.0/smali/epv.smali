.class public final Lepv;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lebe;

.field public final c:Loiw;

.field public final d:Ldne;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "???"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lepv;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ldne;Lebe;Loiw;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lepv;->d:Ldne;

    iput-object p2, p0, Lepv;->b:Lebe;

    iput-object p3, p0, Lepv;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lepv;->b:Lebe;

    invoke-virtual {v0}, Lebe;->e()Z

    move-result v0

    return v0
.end method
