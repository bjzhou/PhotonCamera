.class final Llls;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final a:Lozo;

.field final b:Ljava/io/File;

.field final c:Llls;

.field final d:I

.field final e:Z

.field final f:Ljava/lang/String;

.field g:J


# direct methods
.method public constructor <init>(Llls;ZLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llls;->g:J

    iget-object v0, p1, Llls;->a:Lozo;

    iput-object v0, p0, Llls;->a:Lozo;

    iget-object v0, p1, Llls;->b:Ljava/io/File;

    iput-object v0, p0, Llls;->b:Ljava/io/File;

    iput-object p1, p0, Llls;->c:Llls;

    iget v0, p1, Llls;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llls;->d:I

    iput-boolean p2, p0, Llls;->e:Z

    iget p2, p1, Llls;->d:I

    if-eqz p2, :cond_0

    iget-object p1, p1, Llls;->f:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Llls;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lozo;Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llls;->g:J

    iput-object p1, p0, Llls;->a:Lozo;

    iput-object p2, p0, Llls;->b:Ljava/io/File;

    const/4 p1, 0x0

    iput-object p1, p0, Llls;->c:Llls;

    const/4 p1, 0x0

    iput p1, p0, Llls;->d:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Llls;->e:Z

    const-string p1, ""

    iput-object p1, p0, Llls;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Llls;

    iget v0, p0, Llls;->d:I

    iget v1, p1, Llls;->d:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    iget-boolean v0, p0, Llls;->e:Z

    iget-boolean v1, p1, Llls;->e:Z

    if-eq v0, v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    iget-object v0, p0, Llls;->f:Ljava/lang/String;

    iget-object p1, p1, Llls;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    :goto_0
    return v2
.end method
