.class public Lyz;
.super Ljava/lang/Object;

# interfaces
.implements Lyx;


# instance fields
.field public a:Lyx;

.field public b:Z

.field public c:Z

.field final d:Lzi;

.field e:I

.field public f:I

.field g:I

.field h:Lza;

.field public i:Z

.field final j:Ljava/util/List;

.field final k:Ljava/util/List;

.field l:I


# direct methods
.method public constructor <init>(Lzi;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyz;->a:Lyx;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lyz;->b:Z

    iput-boolean v1, p0, Lyz;->c:Z

    const/4 v2, 0x1

    iput v2, p0, Lyz;->l:I

    iput v2, p0, Lyz;->g:I

    iput-object v0, p0, Lyz;->h:Lza;

    iput-boolean v1, p0, Lyz;->i:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyz;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyz;->k:Ljava/util/List;

    iput-object p1, p0, Lyz;->d:Lzi;

    return-void
.end method


# virtual methods
.method public final a(Lyx;)V
    .locals 1

    iget-object v0, p0, Lyz;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lyz;->i:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lyx;->f()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lyz;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lyz;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyz;->i:Z

    iput v0, p0, Lyz;->f:I

    iput-boolean v0, p0, Lyz;->c:Z

    iput-boolean v0, p0, Lyz;->b:Z

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-boolean v0, p0, Lyz;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyz;->i:Z

    iput p1, p0, Lyz;->f:I

    iget-object p1, p0, Lyz;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyx;

    invoke-interface {v0}, Lyx;->f()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 6

    iget-object v0, p0, Lyz;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyz;

    iget-boolean v1, v1, Lyz;->i:Z

    if-nez v1, :cond_0

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyz;->c:Z

    iget-object v1, p0, Lyz;->a:Lyx;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lyx;->f()V

    :cond_2
    iget-boolean v1, p0, Lyz;->b:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lyz;->d:Lzi;

    invoke-virtual {v0}, Lzi;->f()V

    return-void

    :cond_3
    iget-object v1, p0, Lyz;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyz;

    instance-of v5, v4, Lza;

    if-nez v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_8

    if-ne v2, v0, :cond_8

    iget-boolean v0, v3, Lyz;->i:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lyz;->h:Lza;

    if-eqz v0, :cond_7

    iget-boolean v1, v0, Lza;->i:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lyz;->g:I

    iget v0, v0, Lza;->f:I

    mul-int v1, v1, v0

    iput v1, p0, Lyz;->e:I

    goto :goto_1

    :cond_6
    return-void

    :cond_7
    :goto_1
    iget v0, v3, Lyz;->f:I

    iget v1, p0, Lyz;->e:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lyz;->c(I)V

    :cond_8
    iget-object v0, p0, Lyz;->a:Lyx;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lyx;->f()V

    :cond_9
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lyz;->d:Lzi;

    iget-object v1, v1, Lzi;->d:Lyn;

    iget-object v1, v1, Lyn;->aj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lyz;->l:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "null"

    goto :goto_0

    :pswitch_0
    const-string v1, "BASELINE"

    goto :goto_0

    :pswitch_1
    const-string v1, "BOTTOM"

    goto :goto_0

    :pswitch_2
    const-string v1, "TOP"

    goto :goto_0

    :pswitch_3
    const-string v1, "RIGHT"

    goto :goto_0

    :pswitch_4
    const-string v1, "LEFT"

    goto :goto_0

    :pswitch_5
    const-string v1, "VERTICAL_DIMENSION"

    goto :goto_0

    :pswitch_6
    const-string v1, "HORIZONTAL_DIMENSION"

    goto :goto_0

    :pswitch_7
    const-string v1, "UNKNOWN"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lyz;->i:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lyz;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, "unresolved"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") <t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyz;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyz;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
