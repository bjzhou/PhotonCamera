.class public final Ljoa;
.super Ljava/lang/Object;

# interfaces
.implements Ljcy;


# static fields
.field public static final a:Ljoa;


# instance fields
.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:Ljava/lang/Long;

.field private final j:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljoa;

    invoke-direct {v0}, Ljoa;-><init>()V

    sput-object v0, Ljoa;->a:Ljoa;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljoa;->b:Z

    iput-boolean v0, p0, Ljoa;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, Ljoa;->d:Ljava/lang/String;

    iput-boolean v0, p0, Ljoa;->e:Z

    iput-boolean v0, p0, Ljoa;->h:Z

    iput-object v1, p0, Ljoa;->f:Ljava/lang/String;

    iput-object v1, p0, Ljoa;->g:Ljava/lang/String;

    iput-object v1, p0, Ljoa;->i:Ljava/lang/Long;

    iput-object v1, p0, Ljoa;->j:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljoa;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljoa;

    iget-boolean v1, p1, Ljoa;->b:Z

    iget-boolean v1, p1, Ljoa;->c:Z

    iget-object v1, p1, Ljoa;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Ljhp;->af(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p1, Ljoa;->e:Z

    iget-boolean v3, p1, Ljoa;->h:Z

    iget-object v3, p1, Ljoa;->f:Ljava/lang/String;

    invoke-static {v1, v1}, Ljhp;->af(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Ljoa;->g:Ljava/lang/String;

    invoke-static {v1, v1}, Ljhp;->af(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Ljoa;->i:Ljava/lang/Long;

    invoke-static {v1, v1}, Ljhp;->af(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p1, Ljoa;->j:Ljava/lang/Long;

    invoke-static {v1, v1}, Ljhp;->af(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v3, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
