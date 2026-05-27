.class final Lkkg;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field final synthetic a:Lkkh;

.field private b:Z

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lkkh;I)V
    .locals 0

    iput p2, p0, Lkkg;->c:I

    iput-object p1, p0, Lkkg;->a:Lkkh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lkkg;->b:Z

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget v0, p0, Lkkg;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    monitor-enter p0

    goto :goto_3

    :pswitch_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkkg;->b:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lkkg;->b:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkkg;->a:Lkkh;

    monitor-enter v0

    :try_start_1
    iget v3, v0, Lkkh;->b:I

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Llkj;->x(Z)V

    iget v3, v0, Lkkh;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lkkh;->b:I

    if-nez v3, :cond_2

    iget v3, v0, Lkkh;->a:I

    if-nez v3, :cond_2

    iput-boolean v2, v0, Lkkh;->c:Z

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lkkh;->d:Ljuf;

    invoke-virtual {v1}, Ljuf;->close()V

    :cond_3
    invoke-virtual {v0}, Lkkh;->c()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_4
    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :goto_3
    :try_start_4
    iget-boolean v0, p0, Lkkg;->b:Z

    if-nez v0, :cond_5

    iput-boolean v2, p0, Lkkg;->b:Z

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_9

    iget-object v0, p0, Lkkg;->a:Lkkh;

    monitor-enter v0

    :try_start_5
    iget v3, v0, Lkkh;->a:I

    if-lez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    invoke-static {v3}, Llkj;->x(Z)V

    iget v3, v0, Lkkh;->a:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lkkh;->a:I

    if-nez v3, :cond_7

    iget v3, v0, Lkkh;->b:I

    if-nez v3, :cond_7

    iput-boolean v2, v0, Lkkh;->c:Z

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    :goto_6
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_8

    iget-object v1, v0, Lkkh;->d:Ljuf;

    invoke-virtual {v1}, Ljuf;->close()V

    :cond_8
    invoke-virtual {v0}, Lkkh;->c()V

    return-void

    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    :cond_9
    return-void

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
