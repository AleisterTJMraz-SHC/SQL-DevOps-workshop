CREATE TABLE [dbo].[Events] (
    [VenueId]       INT           NOT NULL,
    [EventId]       INT           IDENTITY (1, 1) NOT NULL,
    [EventName]     NVARCHAR (50) NOT NULL,
    [Subtitle]      NVARCHAR (50) NULL,
    [Date]          DATETIME2 (7) NOT NULL,
    [RowVersion]    ROWVERSION    NOT NULL,
    [ParentEventId] INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([VenueId] ASC, [EventId] ASC),
    CONSTRAINT [FK_Events_Venues] FOREIGN KEY ([VenueId]) REFERENCES [dbo].[Venues] ([VenueId])
);


GO

